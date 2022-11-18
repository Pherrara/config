" the next lines auto-install vim.plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scrooloose/nerdtree' "Open with C-n
"Plug 'tsony-tsonev/nerdtree-git-plugin'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline' "Adds the status line on the bottom
Plug 'airblade/vim-gitgutter' "Shows git diff in files, should be configured...
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files with C-p
Plug 'scrooloose/nerdcommenter' " comment by pressing ++
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' } "This shit doesnt work
Plug 'christoomey/vim-tmux-navigator' " This one makes possible to navigate between windows with C-h C-l ecc.
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Initialize plugin system
call plug#end()

nmap <C-n> :NerdTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"this autocompletes with tab, LOVE
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

"this should yank to clipboard,
set clipboard=unnamedplus,unnamed

"those are old vim settings that are cool
inoremap jj <Esc>

set number
set relativenumber
set tabstop=3
set shiftwidth=0
"filetype on
"filetype plugin on
"filetype indent on
"syntax on
set cursorline
set incsearch
set hlsearch "type :noh for stop highlight
set history=1000
set wildmenu
colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha, gruvbox ecc...
