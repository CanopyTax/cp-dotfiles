let g:neoformat_try_formatprg = 1
autocmd FileType javascript set formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ es5
command Pretty Neoformat
