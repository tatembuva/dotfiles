" Nerdtree
nmap <C-n> :NERDTreeToggle<CR>
nmap <Leader>n :NERDTreeToggle<CR>
let g:nerdtree_tabs_focus_on_files=1
" let g:nerdtree_tabs_open_on_console_startup=2
" Highjack Netrw and open nerdtree on startup in the given directory
let g:NERDTreeHijackNetrw = 1
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]
