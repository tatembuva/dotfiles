" ***********************************************************
" Vim Plug 🔌                                               *
" ***********************************************************
call plug#begin('~/.config/nvim/plugged')

" NERDTree 🌳
" Simple File Explorer
Plug 'scrooloose/nerdTree'
" Polyglot 🙌🏽
Plug 'sheerun/vim-polyglot'
" MatchTags 🥢
Plug 'valloric/matchtagalways'
" Solarized8️⃣
Plug 'lifepillar/vim-solarized8'
" GruvBox 🕺
Plug 'morhetz/gruvbox'
" Vim Airline 🛩
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" CoC.nvim 🐓
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" TagBar 😬
Plug 'majutsushi/tagbar'
" Startify 💥
Plug 'mhinz/vim-startify'
" FZF 🔍
" Fuzzy File Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" The sliver searcher 🏄
" Ack plugin that supports ag, text-search
Plug 'mileszs/ack.vim'
" Vim Commentary ❝ ❞
Plug 'tpope/vim-commentary'
" Vim Fugitive 😈 #1 Git Plugin
Plug 'tpope/vim-fugitive'
" Vim Git Gutter 🚦
Plug 'airblade/vim-gitgutter'

call plug#end()
