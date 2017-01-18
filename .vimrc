set nocompatible
filetype indent plugin on
syntax on

set showcmd
set hlsearch

set laststatus=2
set confirm
set relativenumber
set number
set notimeout ttimeout ttimeoutlen=10

set autoindent noexpandtab tabstop=4 shiftwidth=4

set noshowmode
highlight LineNr ctermfg=blue ctermbg=black

autocmd BufEnter * silent! lcd %:p:h


" map
let mapleader = ','
nnoremap <F5> :make<CR>


" vim-plug

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-latex/vim-latex'

call plug#end()


" vim-latex

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf='zathura'


" vim-nerdtree-tabs
let g:NERDTreeWinPos = "right"
map <Leader>n <plug>NERDTreeTabsToggle<CR>
"nmap <Leader>ne :NERDTree<CR>

