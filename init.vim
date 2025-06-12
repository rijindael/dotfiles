syntax on
filetype plugin on
set nocompatible
"colorscheme slate

set list listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<

" set default hotkey <Leader> = <Space>
let mapleader = " "
let mapleaderlocal = " "

autocmd VimEnter * :clearjumps

" allow vim to get configure from vimrc (and etc) in $pwd
set exrc

set nu
set relativenumber

set noerrorbells 
set belloff=all

set termguicolors

" autosave current buffer when open another buffer
set hidden

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

if !has('nvim')
    set smartindent 
endif

set noswapfile
set nobackup

" save changed things in undodir
" impact: after reopening file can usage <u> and <C-r> hot keys
set undodir=~/.vim/undodir
set undofile

" show search before press <Enter>
" hot keys <C-g> and <C-t> 
set incsearch

set scrolloff=8

" left colums preference
set signcolumn=yes
set foldcolumn=1

" right color column on 80-th symbol of every string
set colorcolumn=80

" set cursorline

" enable autocomplete to command <:...> in vim
set wildmenu
set wildmode=full

set history=300

" wrap long lines to display in one line
set nowrap

" set hot keys to VIM quickFixList and LocationList
nnoremap <silent> ]<C-q> :cnewer<cr>
nnoremap <silent> [<C-q> :colder<cr>

nnoremap <silent> ]<C-l> :lnewer<cr>
nnoremap <silent> [<C-l> :lolder<cr>

nnoremap <silent> <leader>co :copen<cr>
nnoremap <silent> <leader>cc :cclose<cr>

" :h matchit
" Helps you to match syntax constuctions in Vim
runtime macros/matchit.vim

" fix language keymap in normal mode
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',ё\\,яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,Ё/|


" fixes language keymap in insert mode
imap <C-ц> <C-w>
imap <C-х> <C-[>
imap <C-щ> <C-o>


" only nvim preferences
call plug#begin('~/.vim/plugged')

" Плагины
Plug 'morhetz/gruvbox'          " Цветовая схема
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }  " Поддержка Go
Plug 'andymass/vim-matchup'     " Улучшенный matchit
Plug 'tpope/vim-fugitive'       " Интеграция с Git
Plug 'neovim/nvim-lspconfig'    " Поддержка LSP

call plug#end()

" Настройки vim-go
let g:go_fmt_command = 'goimports'  " Автоматическое форматирование с goimports
let g:go_highlight_types = 1        " Подсветка типов
let g:go_highlight_fields = 1       " Подсветка полей структур
let g:go_highlight_functions = 1    " Подсветка функций
let g:go_highlight_methods = 1      " Подсветка методов
let g:go_auto_type_info = 1         " Показывать информацию о типах
