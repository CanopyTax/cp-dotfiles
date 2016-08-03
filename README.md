#Current setup for vim and tmux

##Installing
`git clone git@github.com:CanopyTax/cp-dotfiles.git ~`
Rename the `cp-dotfiles` directory to `.vim`
init.vim should by symlinked to .vimrc
`ln -s ~/.vim/init.vim ~/.vimrc`
tmux.conf should be symlinked to ~/.tmux.conf
`ln -s ~/.vim/tmux.conf ~/.tmux.conf`

##NeoVim extras
###Installing neovim - (On Mac)
- `brew install neovim/neovim/neovim`
- Then you'll want python3 enabled for neovim to use the autocomplete functionality
- If you don't have python3 run
- `brew install python3`
- You should now have pip3
- Run `pip3 install neovim`
- Run the command `:echo has("python3")` inside of neovim
- If it returns `1` you're in business
- Now run `:UpdateRemotePlugins` to enable deoplete (the autocomplete plugin)
- If it returns `0` this page could help https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim

The autocomplete that comes with this setup is deoplete https://github.com/Shougo/deoplete.nvim

It only works with NeoVim when python mode is enabled

If you don't want NeoVim inside the vundles.vim file

Change the line `Plugin 'Shougo/deoplete.vim'` to `Plugin Shougo/neocomplete.vim`

Quit vim, reload it and run `:BundleClean` and after `:PluginInstall`

There may be configurations with neocomplete you'll want

If you're setting up NeoVim on Mac for the first time you should run the commands
```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
```
As per https://github.com/neovim/neovim/issues/2048#issuecomment-78045837
Otherwise `ctrl + h` won't switch between panes
