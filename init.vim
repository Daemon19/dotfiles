call plug#begin()

" Core Plugins
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'

" Appearance Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'

call plug#end()

" ---- Key Mappings ----
inoremap <C-i> <ESC>
vnoremap <C-i> <ESC>

nnoremap <C-_> <plug>NERDCommenterToggle
xnoremap <C-_> <plug>NERDCommenterToggle
inoremap <C-_> <ESC><plug>NERDCommenterToggle i

" Window navigations
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <silent> <C-q> :q<CR>
nnoremap <silent> <C-s> :w<CR>
" ---- End of Key Mappings ----

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set smartindent
set smartcase
set expandtab

set so=7
set incsearch
set hlsearch
set ignorecase
set termguicolors
set mouse=a

" Use system clipboard
set clipboard+=unnamedplus

colorscheme onedark
syntax on

filetype plugin on

if !has('nvim')
	set ttymouse=xterm2
endif

" ---- NerdTree Configs ----
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" ---- End of NerdTree Configs ----

" ------------ Nerdcommenter configurations ------------
" Create default mappings
let g:NERDCreateDefaultMappings = 0

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" ------------ End of Nerdcommenter configurations ------------
