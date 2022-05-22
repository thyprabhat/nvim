" Commentt:q
" in Vimscript start with a `".

" If you open this file in Vim, it'll be syntax highlighted for you.

"set guicursor=
set nohlsearch
set scrolloff=8
set signcolumn=yes

let mapleader = ","


call plug#begin()

Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-plug'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'xavierd/clang_complete'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'ianding1/leetcode.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'Shougo/neocomplcache.vim'
Plug 'morhetz/gruvbox'
Plug '907th/vim-auto-save'
Plug 'gabrielelana/vim-markdown'
"Plug 'godlygeek/tabular'
"Plug 'preservim/vim-markdown'
"Plug 'lervag/vimtex'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi'


call plug#end() 

"let g:ycm_global_ycm_extra_conf = "C:\Users\mailp\AppData\Local\nvim\plugged\YouCompleteMe\.ycm_extra_conf.py"

let g:gruvbox_bold=1
let g:gruvbox_italic=1
:colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:rainbow_active = 1
let mapleader=" "

let g:netew_browser_split=2
let g:netrw_banner =0
let g:netrw_winsize =25

let g:ctrlp_use_caching =0

let g:auto_save = 1
let g:auto_save_silent = 0  " do not display the auto-save notification

"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'my_pdf_viewer'
"let g:livepreview_engine = 'pdflatex'
"let g:livepreview_previewer='your_viewer'
"let g:livepreview_engine ='pdflatex' 
"let g:livepreview_previewer = 'open -a Preview'
" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on


" tabs 4 spaces long
set tabstop=4 softtabstop=4
set shiftwidth=4

" convert from tab to spaces
set expandtab

" Smart Indent
set smartindent

"No wrapping
set nowrap

"No swap file creation
set noswapfile


"Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set nu

"limit the number of column
set colorcolumn=80
highlight Colorcolumn ctermbg=0 guibg=lightgrey



" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber
" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
"set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>f :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

let g:python3_host_prog = 'C:/Users/mailp/AppData/Local/Programs/Python/Python39/python.exe'

let g:leetcode_browser='chrome'

"Sets the jj as proxy for escape key 
:inoremap jj <Esc>



"Key remapping for LeetCode
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>


