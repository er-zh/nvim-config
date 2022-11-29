" Plugin Section
call plug#begin("~/.vim/plugged")
	" Colorscheme
	Plug 'junegunn/seoul256.vim'

	Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

	Plug 'ryanoasis/vim-devicons'

	Plug 'itchyny/lightline.vim'

	" Code checking / completion
	Plug 'vim-syntastic/syntastic'
	Plug 'rust-lang/rust.vim'

	" Writing plugins
	Plug 'junegunn/goyo.vim'

	Plug 'junegunn/limelight.vim'
call plug#end()

" I don't think this line works
let g:python3_host_prog = '/usr/bin/python3'

" Config Section
" Colors
if(has("termguicolors"))
	set termguicolors
endif
syntax enable
let g:seoul256_background = 234
colo seoul256

" Other stuff
set number " Enable line numbers
set incsearch
set ignorecase
set smartcase
set history=100

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusLine = ''
" Auto close nvim if NERDTree is the only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

