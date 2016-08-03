A: insert at end of line
I: insert at beginning of line
$: go to end of line
0: go to beginning of line
ctrl+d: scroll down fast
ctrl+u: scroll up fast
,t: fuzzy search files (Requires the plugin ctrlpvim/ctrlp.vim, and a command remap)
/: find
y: yank/copy
p: paste after
P: paste before
x: cut
o: insert newline after current line
O: insert newline above current line
r: replace character with next typed character
s: remove character under cursor and go to insert mode
c: remove characters selected in visual mode and go into insert mode
viw: visually select a word (think: visual inner word)
vib: visually select a block
vi(character): visually select inside whatever type of character so like quotes, parens, brackets

:edit - reload file
>: indent left (can be used in visual mode to indent a lot of lines)
<: indent right
5 >>: indent 5 lines

gc: comment (used in visual mode, with the plugin tomtom/tcomment_vim)
gcc: comment without selecting (same plugin)

,” ,{ ,( etc: surround thing with things (with the plugin tpope/vim-surround, and a remap)

.: repeats last command
paste from clipboard: "* to select registry, p to paste
(" is saying let's choose a registry, then you can do like y(ank) or p(aste) to/from the registry, * is the system registry)

v: visual select mode
V: select whole line

easymotion: (the plugin is Shougo/deoplete.nvim)
,,w
,,b


nerdtree: (The plugin is scrooloose/nerdtree)
ctrl+backslash - go to file (needs a special function and remap)
r: refresh directory
R: refresh root

window commands — prefix with ctrl+w
v: window split
=: resize so each split is equal
q: close pane

tmux — prefix with ctrl+a (with tmux and some of these need special mappings in the .tmux.conf)
c: new session
,: rename session
%: split tab horizontally
“: split tab vertically
x: kill pane/window
n: next session
a: prev session
nH J K L: resize window in different directions
{ and }: switch panes
[: enter scroll mode
	q: quit scroll mode

ack/silversearch (commands inside ack pane)
?    a quick summary of these keys, repeat to close
o    to open (same as Enter)
O    to open and close the quickfix window
go   to preview file, open but maintain focus on ack.vim results
t    to open in new tab
T    to open in new tab without moving to it
h    to open in horizontal split
H    to open in horizontal split, keeping focus on the results
v    to open in vertical split
gv   to open in vertical split, keeping focus on the results
q    to close the quickfix window
