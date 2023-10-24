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

"" Cheat Codes
"" ggVG                   - select all
"" "+yy                   - copy selected to global buffer
"" "+p                    - paste from global buffer
"" ctrl-v + shift-i + esc - block select + insert all


"" GUI Utility
" mkdir -p ~/.vim/pack/plugins/start

" NerdTree - File Navigator
" git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
" vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

" CTRL-P - File Fuzzy Search
" git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp

" Vim Airline - Status Bar
" git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
" :helptags ~/.vim/pack/dist/start/vim-airline/doc

" Vim Lightline - Status Bar
" git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline

" Supertab - Auto Complete
" git clone --depth=1 https://github.com/ervandew/supertab.git ~/.vim/pack/plugins/start/supertab

" Vim Devicons - Icons
" git clone https://github.com/ryanoasis/vim-devicons ~/.vim/pack/plugins/start/vim-devicons
" https://github.com/ryanoasis/nerd-fonts/releases " download font

" Vim NerdTree Syntax Highlight
" git clone https://github.com/tiagofumo/vim-nerdtree-syntax-highlight ~/.vim/pack/plugins/start/vim-nerdtree-syntax-highlight 

" Vim Typescript - Syntax Highlighting
" git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/pack/typescript/start/typescript-vim

" fzf - Fuzzy Search File Content
" https://github.com/junegunn/fzf.vim/issues/1102#issuecomment-717417278
" git clone https://github.com/junegunn/fzf.git ~/.vim/pack/packages/start/fzf
" git clone https://github.com/junegunn/fzf.vim.git ~/.vim/pack/packages/start/fzf.vim
" .gitignore handling
" https://github.com/junegunn/fzf.vim/issues/1102#issuecomment-717417278

" bat - Fuzzy Search Syntax Highlighting
" brew / apt install bat

" ag - Code searching tool with focus on speed
" git clone  https://github.com/ggreer/the_silver_searcher
" 

" TODO: Ale - Linting
" https://github.com/dense-analysis/ale

" TODO: CTags - Fuzzy Search File Content
" https://github.com/universal-ctags/ctags

" TODO: Dart Vim Plugin
" git clone https://github.com/dart-lang/dart-vim-plugin  ~/.vim/pack/plugins/start/dart-vim-plugin  

packadd! fzf
packadd! fzf.vim

" Plugin Settings
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:airline_powerline_fonts = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:ctrlp_match_window = 'min:4,max:25'
let g:ctrlp_user_command = ['.git', 'cd %s && rg --files-with-matches ".*"', 'find %s -type f']
" let g:syntastic_dart_checkers = ['dartanalyzer']
" let g:tagbar_ctags_bin = '~/.vim/plugged/exuberant-ctags/ctags'

"" Mappings
no <C-j> <C-w>j 
no <C-k> <C-w>k 
no <C-l> <C-w>l 
no <C-h> <C-w>h
map <C-n> :NERDTreeToggle<CR>
" map <C-m> :TagbarToggle<CR>

"' Settings
set swapfile
set dir=/tmp
set backupdir=/tmp
set number
set guifont=Hack:hNerd:hFont:hMono
set encoding=UTF-8
"" set splitright
set autoindent expandtab tabstop=2 shiftwidth=2

"" Colors
set t_Co=256
syntax on
colorscheme default

"" Optionals
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --ignore node_modules -l --nocolor -g ""'
endif

"" auto start plugins
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd vimenter * cnoreabbrev tree NERDTree
autocmd vimenter * cnoreabbrev search CtrlP

"" close if NERDTree and/or Minimap is last open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
