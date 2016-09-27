syntax on
set laststatus=2
set number

let &colorcolumn=join(range(101,101),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="100,".join(range(131,999),",")

set nocompatible  
filetype off
set rtp+=~/.vim/bundle/vundle/

" air-line
let g:airline_powerline_fonts = 1

" =================================================================================================
" Plugins
" =================================================================================================
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" list all plugins that you'd like to install here
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'fugitive.vim'

call vundle#end()
filetype plugin indent on

" =================================================================================================
" key mappings
" =================================================================================================
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
