" Neovim Config 08-04-2019

" Leader Key <,>
let mapleader = ","
" ***********************************************************
" General Settings ⚙️                                        *
" ***********************************************************
set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=a                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " Show relative line numbering
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set cursorline              " hightlight line at cursor position
" Dank Modal Remaps 🐸
inoremap jj <Esc>
cnoremap jk <Esc>
vnoremap jk <Esc>
"Buffer Navigation 🚥
nnoremap <silent> <S-l> :bn<CR>
nnoremap <silent> <S-h> :bp<CR>
nnoremap <leader>w :bn<CR>
"Window/Split Navigation 🚦
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Close a buffer 🚫
nnoremap <Leader>c :bd<CR>
" Search Highlight clear 🙏🏽
nnoremap <Leader><Space> :noh<CR>
"" Directories for swp files ❌
set nobackup
set noswapfile

" ***********************************************************
" Vim Plug 🔌                                               *
" ***********************************************************
call plug#begin('~/.config/nvim/plugged')
" NERDTree 🌳
" Simple File Explorer
Plug 'scrooloose/nerdTree'
"Nerdtree Tabs 📑
Plug 'jistr/vim-nerdtree-tabs'
" FZF 🔍
" Fuzzy File Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" The sliver searcher 🏄
" Ack plugin that supports ag, text-search
Plug 'mileszs/ack.vim'
" Vim Airline 🛩
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Solarized8️⃣
Plug 'lifepillar/vim-solarized8'
" Javascript syntax highlighting
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Vim Commentary ❝ ❞
Plug 'tpope/vim-commentary'
" Vim Fugitive 😈 #1 Git Plugin
Plug 'tpope/vim-fugitive'
" Vim Git Gutter 🚦
Plug 'airblade/vim-gitgutter'
" Deoplte 🎰
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Emmet 🤹
Plug 'mattn/emmet-vim'
" Svelte (JS frontend framework/compiler)🥇
Plug 'burner/vim-svelte'
" Nim Support ✊🏽
Plug 'baabelfish/nvim-nim'
" Latex Support ✊🏽
Plug 'lervag/vimtex'
" Markdown Support 📓
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

call plug#end()
" ***********************************************************
" Plugin Configs                                            *
" ***********************************************************
" Nerdtree
nmap <C-n> :NERDTreeToggle<CR>
nmap <Leader>n :NERDTreeToggle<CR>
let g:nerdtree_tabs_focus_on_files=1
" let g:nerdtree_tabs_open_on_console_startup=2
" Highjack Netrw and open nerdtree on startup in the given directory
let g:NERDTreeHijackNetrw = 1
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]
" Ag/Ack
" Ensure Ag is used if avaliable instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" Ack! prevents command from jumping to the first result
nnoremap <Leader>a :Ack!<Space>
" FZF 
nnoremap <Leader>e :FZF<CR>
" Vim Airline
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" Vim Airline Powerline Fonts/Symbols
if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
" Airline + Fugitive
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif
" Vim-Solarized ColorScheme
syntax on
set termguicolors
colorscheme solarized8
" Vim-Javascript
" 4 space tabs
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4
augroup END
" Deoplete
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Emmet Config
" Emmet trigger, <,,> will be the full expand command
let g:user_emmet_leader_key=','
" Emmet enabled for Insert & Normal modes only
let g:user_emmet_mode='a'
" Enable Emmet for html, css, jsx, svelte
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx,svelte EmmetInstall

" Vimtex Setup 
autocmd FileType tex setl updatetime=1
let g:vimtex_compiler_progname = 'nvr'
" let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_viewer='open'
let g:vimtex_view_general_options='@pdf'
let g:tex_flavor = 'latex'
" Latex Autocompletion with deoplete
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
nmap <space>li <plug>(vimtex-info)
