set nocompatible              " be iMproved, required
syntax on

" Vundle {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive' 
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf.vim' 
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
" }}}

" Line and spacing options {{{
set nu
hi LineNr ctermfg=32
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent

nmap j gj
nmap k gk
" }}}

" Enable Folding {{{ 	Plugin 'vim-airline/vim-airline'
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set modelines=1
" }}}

" Searching {{{
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu " auto-complete commands in cmdline
" }}}

" visual indicator for 110 character limit
set colorcolumn=110

" Remap jk to escape
inoremap jk <Esc>

" Use tn to create a new tab
ca tn tabnew

" Use control + space to do autocompletion in insert mode
inoremap <Nul> <C-p>
highlight Pmenu ctermbg=233 ctermfg=White
highlight PmenuSel ctermbg=green

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='jellybeans'

" colorscheme
colorscheme gruvbox

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = '!'
let g:syntastic_python_checkers = ['flake8', 'pep8', 'pyflakes', 'pycodestyle']
let g:syntastic_quiet_messages = { "regex": [
        \ '\mline too long'
        \ ] }

function! SyntasticCheckHook(errors)
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 10])
    endif
endfunction

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Commentary
autocmd FileType python set commentstring=#%s
