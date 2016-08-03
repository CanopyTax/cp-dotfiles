" To change the lightline theme just change the
" colorscheme property here
" check out theme options here - https://github.com/itchyny/lightline.vim
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'readonly', 'filename', 'modified' ] ]
			\ },
			\ 'component_function': {
			\   'readonly': 'MyReadonly',
			\   'filename': 'MyFilename',
			\ },
			\ 'separator': { 'left': '⮀', 'right': '⮂' },
			\ 'subseparator': { 'left': '⮁', 'right': '⮃' }
			\ }

function! MyReadonly()
	if &filetype == "help"
		return ""
	elseif &readonly
		return "⭤ "
	else
		return ""
	endif
endfunction

function! MyFilename()
	return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
				\ ('' != expand('%') ? expand('%') : '[NoName]')
endfunction

" Use status bar even with single buffer
set laststatus=2
