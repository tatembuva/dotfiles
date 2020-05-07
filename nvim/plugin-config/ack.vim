" Ag/Ack
" Ensure Ag is used if avaliable instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" Ack! prevents command from jumping to the first result
nnoremap <Leader>a :Ack!<Space>
