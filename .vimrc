syntax on
set laststatus=2
set number

let &colorcolumn=join(range(101,101),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="100,".join(range(131,999),",")

set nocompatible
set backspace=2
filetype off
set rtp+=~/.vim/bundle/vundle/

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" =================================================================================================
" Plugins
" =================================================================================================
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" list all plugins that you'd like to install here
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fugitive.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'edkolev/tmuxline.vim'

call vundle#end()
filetype plugin indent on
colorscheme badwolf
let g:airline_theme='wombat'

" =================================================================================================
" key mappings
" =================================================================================================

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'

nmap <F8> :TagbarToggle<CR>
