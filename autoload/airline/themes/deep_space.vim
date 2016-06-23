" ---------------------------------------------
" Airline theme for deep-space colorscheme
" ---------------------------------------------

let g:airline#themes#deep_space#palette = {}

function! airline#themes#deep_space#refresh()
  let g:airline#themes#deep_space#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['String', 'fg'], 'bold')
  let s:N2 = airline#themes#get_highlight('Pmenu')
  let s:N3 = airline#themes#get_highlight('Normal')

  let g:airline#themes#deep_space#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let s:Nmod = airline#themes#get_highlight('Type')
  let g:airline#themes#deep_space#palette.normal_modified = {
        \ 'airline_c': s:Nmod
        \ }

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Statement', 'fg'], 'bold')
  let s:I2 = s:N2
  let s:I3 = s:N3
  let g:airline#themes#deep_space#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#deep_space#palette.insert_modified = g:airline#themes#deep_space#palette.normal_modified

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['WarningMsg', 'fg'], 'bold')
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#deep_space#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#deep_space#palette.replace_modified = g:airline#themes#deep_space#palette.normal_modified

  let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Function', 'fg'], 'bold')
  let s:V2 = s:N2
  let s:V3 = s:N3
  let g:airline#themes#deep_space#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#deep_space#palette.visual_modified = g:airline#themes#deep_space#palette.normal_modified

  let s:IA = airline#themes#get_highlight('NonText')
  let g:airline#themes#deep_space#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#deep_space#palette.inactive_modified = {
        \ 'airline_c': s:Nmod
        \ }
endfunction

call airline#themes#deep_space#refresh()

