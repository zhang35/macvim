set fileformats=unix,dos
execute pathogen#infect()
filetype on
filetype plugin indent on

syntax on
set nu
set ruler "显示光标的坐标
set autoindent 
set smartindent
"缩进宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab "建议开启expandtab选项，会自动将tab扩展很空格，代码缩进会更美观
"switch case 对齐风格
set cino=g0,:0

"退格键可用
set nocompatible
set backspace=indent,eol,start




"gvim
set guioptions+=c        " 使用字符提示框     
set guioptions-=m        " 隐藏菜单栏     
set guioptions-=T        " 隐藏工具栏     
set guioptions-=L        " 隐藏左侧滚动条     
set guioptions-=r        " 隐藏右侧滚动条     
set guioptions-=b        " 隐藏底部滚动条     
"set showtabline=0       " 隐藏Tab栏     
set cursorline           " 突出显示当前行 

"colorscheme solarized
colorscheme monokai
set guifont=Monaco:h14
"set guifont=Consolas:h13

"字符乱码
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312
"解决菜单乱码
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8

"关闭各种按键叮叮声音和闪屏
set vb t_vb=
au GuiEnter * set t_vb=

" taglist
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口

"ctags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
set tags=tags;
set autochdir

" Neocomplcache settings
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_enable_underbar_completion = 1

"Powerline
set laststatus=2   " Always show the statusline
let g:Powerline_theme = 'solarized256'

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1

"delimitmate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
au User delimitMate_map call s:delimitMate_map()
function s:delimitMate_map()
    imap <C-Tab> <Plug>delimitMateS-Tab
endfunction

"SuperTab
let g:SuperTabDefaultCompletionType="context"  

"neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_quick_match = 1 "For input-saving, this variable controls whether you can  choose a candidate with a alphabet or number displayed beside a candidate after '-'.  When you input 'ho-a',  neocomplcache will select candidate 'a'.


