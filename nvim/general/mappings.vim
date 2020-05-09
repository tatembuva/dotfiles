" ***********************************************************
" Key Bindings ⌨️                                            *
" ***********************************************************
" Dank Modal Remaps 🐸
inoremap jj <Esc>
cnoremap jk <Esc>
vnoremap jk <Esc>
" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>
" Better tabbing
vnoremap < <gv
vnoremap > >gv
"Buffer Navigation 🚥
nnoremap <silent> <S-l> :bn<CR>
nnoremap <silent> <S-h> :bp<CR>
"Window/Split Navigation 🚦
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Close a buffer 🚫
nnoremap <Leader>c :bd<CR>
"" Tab Navigation
nnoremap <S-tab>   :tabnext<CR>
" Search Highlight clear 🙏🏽
nnoremap <Leader><Space> :noh<CR>
" Maps ESC to exit terminal's insert mode
  if has('nvim')
    tnoremap <Esc> <C-\><C-n>
  endif
"Close quickfix window
nnoremap <Leader>d :cclose<CR>
