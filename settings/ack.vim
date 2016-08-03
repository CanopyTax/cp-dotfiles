nmap ,ag :Ack! ""<Left>

" This line because ack.vim doesn't actually use Ack
" it uses silver searcher (ag)
let g:ackprg = "ag --vimgrep"
