" enable folding using markers to make .vimrc easier to read {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" vim-plugins {{{
call plug#begin()
Plug 'tpope/vim-commentary'
call plug#end()
" }}}

" general {{{
"syntax enable
filetype plugin indent on
set belloff=all " turns off beeping sounds on errors
let mapleader="\<Space>"
" }}}

"colors {{{
set background=dark
colorscheme gruvbox 
" }}}

" key mappings {{{
inoremap jk <Esc>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>v :vsplit<space>
" u = up
nnoremap <leader>u :split<space>
" window movement 
nnoremap <leader>h <C-w>h 
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
" r = rotate, x = exchange
nnoremap <leader>r <C-w>r
nnoremap <leader>x <C-w>x
" new tab
nnoremap <leader>t :tabedit<space>
" find a file
nnoremap <leader>f :find<space>
" nnoremap <leader>f :Files<CR>
" search across all files
" sf = shift-f
nnoremap <leader>sf :vimgrep<space>
" nnoremap <leader>sf :Rg<CR>
" change between buffers easily
nnoremap <leader>b :buffers<CR>:b<space>
 " quickfix list and make it take up entire bottom horizontally
 nnoremap <leader>qo :copen<CR><C-w>J
 nnoremap <leader>qc :cclose<CR>
" copy to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>Y "*y
" past from system clipboard
nnoremap <leader>p "+p
vnoremap <leader>P "*p
" auto make second { 
inoremap {<CR> {<CR>}<Esc>O
" }}}

" spaces and tabs {{{
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2 " indents will have 2 spaces
set autoindent
set smartindent
" }}}

" UI config {{{
set number " show line numbers
set showcmd " show command in bottom bar
set wildmenu " visual autocomplete for command menu
set wildmode=longest:full,full " 
set lazyredraw " redraw the screen only when needed
set showmatch " highlights matching [{()}] when your cursor is over one
set number relativenumber " line numbers are relative to cursor's position
" }}}

" searching {{{
set hlsearch " highlight matches
set incsearch
" }}}

" path {{{
set path+=** " search all current/subdirectories recursively, might turn off if searching becomes slow
" }}}

" autocomplete {{{
set omnifunc=syntaxcomplete#Complete
set completeopt+=noselect " don't autoselect first option
set completeopt+=noinsert " don't fill in text as you scroll through options
set completeopt+=popup
" }}}

" spelling {{{
augroup spell_file_types
    autocmd!
    autocmd FileType markdown,text,latex,tex setlocal spell spelllang=en_us
augroup END
" }}}
