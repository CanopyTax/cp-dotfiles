" Close vim if the only open pane is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open the project tree and expose current file in the nerdtree with Ctrl-\
" " calls NERDTreeFind if NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! OpenNerdTree()
	if &modifiable && strlen(expand('%')) > 0 && !&diff
		NERDTreeFind
	else
		NERDTreeToggle
	endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Show hidden files by default
let NERDTreeShowHidden=1
