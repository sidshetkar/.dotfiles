" enable folding using markers to make .vimrc easier to read {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" general {{{
syntax enable
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
nnoremap <leader>v :vsplit<space>
" u = up
nnoremap <leader>s :split<space>
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
" netrw file explore open, x = eXplorer,
" <C-w>H makes split take up entire vertical column on far vertical left
nnoremap <leader>n :Vexplore<CR><C-w>H:vertical resize 30<CR>
" find a file
nnoremap <leader>f :find<space>
" nnoremap <leader>f :Files<CR>
" search across all files
nnoremap <leader>g :vimgrep<space>
" nnoremap <leader>sf :Rg<CR>
" change between buffers easily
nnoremap <leader>b :buffers<CR>:b<space>
" compile short cuts 
nnoremap <leader>c :make<CR>
" quickfix list
function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction
nnoremap <leader>qt :call ToggleQuickFix()<CR>
nnoremap <leader>qn :cn<CR>
nnoremap <leader>qp :cp<CR>
" copy to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>Y "*y
" past from system clipboard
nnoremap <leader>p "+p
vnoremap <leader>P "*p
" competitive programming
" nnoremap <leader>c :!g++ -std=c++11 -O2 -Wall -DLOCAL_PROJECT %<CR>
" nnoremap <leader>r :!./a.out<CR>
" auto make closing braces "}"
inoremap {<CR> {<CR>}<Esc>O
" short cut to zoom in or full view a window in a new tab, just :wq to get back with changes
nnoremap <leader>z :tab split<CR>
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
set cursorline " highlight current line
" set cursorcolumn " highlight current column
" }}}

" netrw {{{
let g:netrw_liststyle=3 " tree style
" }}}

" searching {{{
set hlsearch " highlight matches
set incsearch
" }}}

" statusline {{{
set laststatus=2 " enable status line
set statusline=
set statusline+=%#CursorColumn# " color
set statusline+=%F " shows whole file path
set statusline+=%{&modified?'[+]':''} " adds [+] if file has been modified but not saved
set statusline+=%= " separator between left and right side
set statusline+=\ %y " file type
set statusline+=\ %{&fileencoding?&fileencoding:&encoding} 
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%% " percentage through the file
set statusline+=\ %l:%c " line and column number
set statusline+=\ 
" }}}

" path {{{
set path+=** " search all current/subdirectories recursively, might turn off if searching becomes slow
" }}}

" autocomplete {{{
set omnifunc=syntaxcomplete#Complete
set completeopt-=menu
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert " don't fill in text as you scroll through options
set completeopt+=popup
" }}}

" spelling {{{
augroup spell_file_types
    autocmd!
    autocmd FileType markdown,text,latex,tex setlocal spell spelllang=en_us
augroup END
" }}}

" mouse {{{
set mouse=a " give mouse control in vim, good if other people need to use
" }}}

" window settings {{{
set splitbelow splitright " makes split and vsplit default to below and right respectively
" }}}

" file {{{
set autoread
" }}}
