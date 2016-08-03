" via: http://whynotwiki.com/Vim
" Ruby
" Use v or # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #

" Select text in an ERb file with visual mode and then press s- or s=
" Or yss- to do entire line.
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =
map ," ysiw"
map ,' ysiw'
map ,( ysiw)
map ,[ ysiw]
map ,{ ysiw}
map ,` ysiw`

" The rest of this is not actually part of vim-surround but it's the same purpose
" This just allows you to do this sort of behavior in visual mode
vmap ," c"<C-R>""<ESC>
vmap ,' c'<C-R>"'<ESC>
vmap ,` c`<C-R>"`<ESC>
vmap ,( c(<C-R>")<ESC>
vmap ,{ c{<C-R>"}<ESC>
vmap ,[ c[<C-R>"]<ESC>
" Make a selection a react-style component
" So Comp selected ,<  becomes <Comp />
vmap ,< c<<C-R>"/><ESC>
