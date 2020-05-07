" " Vim Airline
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#neomake#enabled = 0
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
  " let g:airline#extensions#tabline#left_sep = ''
  " let g:airline#extensions#tabline#left_sep = "\uE0B4"
  let g:airline#extensions#tabline#left_sep = ""
  " let g:airline#extensions#tabline#left_alt_sep = ''
  " let g:airline#extensions#tabline#left_alt_sep = "\uE0B5"
  let g:airline#extensions#tabline#left_alt_sep = ""
  " let g:airline_left_sep = ''
  " let g:airline_left_sep = "\uE0B4"
  let g:airline_left_sep = ""
  " let g:airline_left_alt_sep = ''
  " let g:airline_left_alt_sep = "\ue0b5"
  let g:airline_left_alt_sep = ""
  " let g:airline_right_sep = ''
  " let g:airline_right_sep = "\uE0B6"
  let g:airline_right_sep = ""
  " let g:airline_right_alt_sep = ''
  " let g:airline_right_alt_sep = "\ue0b7"
  let g:airline_right_alt_sep = " | "
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
" " Airline + Fugitive
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

