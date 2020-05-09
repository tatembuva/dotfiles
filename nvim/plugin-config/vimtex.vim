" Vimtex Setup 
autocmd FileType tex setl updatetime=1
let g:vimtex_compiler_progname = 'nvr'
" let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_viewer='open'
let g:vimtex_view_general_options='@pdf'
let g:tex_flavor = 'latex'
" Latex Autocompletion with deoplete
" call deoplete#custom#var('omni', 'input_patterns', {
"       \ 'tex': g:vimtex#re#deoplete
"       \})
nmap <space>li <plug>(vimtex-info)

