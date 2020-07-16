""""""
" ereio vim config
""""""
"" remember:
"" Ctrl-w <hjkl> to move around windows 
"" Ctrl-<hjkl> to move around windows (Modded)
"" Ctrl-w w to cycle windows
" o........Open files, directories and bookmarks......................|NERDTree-o|
" go.......Open selected file, but leave cursor in the NERDTree......|NERDTree-go|
" t........Open selected node/bookmark in a new tab...................|NERDTree-t|
" T........Same as 't' but keep the focus on the current tab..........|NERDTree-T|
" i........Open selected file in a split window.......................|NERDTree-i|
" gi.......Same as i, but leave the cursor on the NERDTree...........|NERDTree-gi|
" s........Open selected file in a new vsplit.........................|NERDTree-s|
" gs.......Same as s, but leave the cursor on the NERDTree...........|NERDTree-gs|
" <CR>.....User-definable custom open action.......................|NERDTree-<CR>|
" O........Recursively open the selected directory....................|NERDTree-O|
" x........Close the current nodes parent.............................|NERDTree-x|
" X........Recursively close all children of the current node.........|NERDTree-X|
" e........Edit the current dir.......................................|NERDTree-e|

" start vim-plug auto install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" " TESTING
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" GUI Utility
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
"Plug 'majutsushi/tagbar'
"Plug 'vim-syntastic/syntastic'
"Plug 'jakedouglas/exuberant-ctags'
"Plug 'dart-lang/dart-vim-plugin'

" Plugin Settings
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:airline_powerline_fonts = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
" let g:minimap_toggle='<leader>mm'
" let g:syntastic_dart_checkers = ['dartanalyzer']
" let g:tagbar_ctags_bin = '~/.vim/plugged/exuberant-ctags/ctags'

"" Initialize plugin system
call plug#end()

" mappings
no <C-j> <C-w>j 
no <C-k> <C-w>k 
no <C-l> <C-w>l 
no <C-h> <C-w>h
map <C-n> :NERDTreeToggle<CR>
" map <C-m> :TagbarToggle<CR>

"" vim settings
set swapfile
set dir=/tmp
set backupdir=/tmp
set number
set guifont=Hack\ Nerd\ Font
set encoding=UTF-8
" colorscheme default

"" set vim to use xresources
set t_Co=256

"" auto start plugins
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd vimenter * AirlineRefresh

"" close if NERDTree and/or Minimap is last open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
