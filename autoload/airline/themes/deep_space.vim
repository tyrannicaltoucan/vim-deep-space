" ------------------------------------------------------
"  Deep Space theme for vim-airline
"  (https://github.com/tyrannicaltoucan/vim-deep-space)
"
"  Designed for 24-bit color palettes, will fallaback
"  to 8-bit colors if necessary.
" ------------------------------------------------------

let g:airline#themes#deep_space#palette = {}

" Normal
let s:N1 = ['#1b202a', '#709d6c', 234, 65]
let s:N2 = ['#9aa7bd', '#323c4d', 248, 238]
let s:N3 = ['#51617d', '#232a36', 243, 236]
let g:airline#themes#deep_space#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#deep_space#palette.normal_modified = {
      \ 'airline_c': ['#b3785d', '', 137, '', ''],
      \ }

" Insert
let s:I1 = ['#1b202a', '#56adb7', 234, 73]
let s:I2 = ['#9aa7bd', '#323c4d', 248, 238]
let s:I3 = ['#51617d', '#232a36', 243, 236]
let g:airline#themes#deep_space#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#deep_space#palette.insert_modified = {
      \ 'airline_c': ['#b3785d', '', 137, '', ''],
      \ }

" Replace
let s:R1 = ['#c9d0dc', '#b15e7c', 252, 132]
let s:R2 = ['#9aa7bd', '#323c4d', 248, 238]
let s:R3 = ['#51617d', '#232a36', 243, 236]
let g:airline#themes#deep_space#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#deep_space#palette.replace_modified = {
      \ 'airline_c': ['#b3785d', '', 137, '', ''],
      \ }

" Visual
let s:V1 = ['#c9d0dc', '#8f72bf' , 252, 97]
let s:V2 = ['#9aa7bd', '#323c4d' , 248 , 238]
let s:V3 = ['#51617d', '#232a36' , 243 , 236]
let g:airline#themes#deep_space#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#deep_space#palette.visual_modified = {
      \ 'airline_c': ['#b3785d', '', 231, 59, ''],
      \ }

" Inactive
let s:IA1 = ['#1b202a', '#2a3341', 234, 235, '']
let s:IA2 = ['#1b202a', '#323c4d', 234, 236, '']
let s:IA3 = ['#1b202a', '#3a4559', 234, 237, '']
let g:airline#themes#deep_space#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#deep_space#palette.inactive_modified = {
      \ 'airline_c': ['#397e86', '', 66, '', ''],
      \ }

" Readonly warning
let g:airline#themes#deep_space#palette.accents = {
      \ 'red': ['#b15e7c', '', 132, '']
      \ }

" Ctrlp
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let g:airline#themes#deep_space#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ ['#1b202a', '#56adb7', 234, 73, ''],
      \ ['#1b202a', '#419099', 234, 66, ''],
      \ ['#1b202a', '#9aa7bd', 234, 248, 'bold'])
