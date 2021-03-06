# Current setup for vim and tmux

## Installing
- Run `git clone git@github.com:CanopyTax/cp-dotfiles.git ~/.vim`  

init.vim should by symlinked to .vimrc  
- Run `ln -s ~/.vim/init.vim ~/.vimrc`  

tmux.conf should be symlinked to ~/.tmux.conf  
- Run `ln -s ~/.vim/tmux.conf ~/.tmux.conf`  

Install vundle
- Run `git clone https://github.com/VundleVim/Vundle.Vim ~/.vim/bundle/Vundle.vim`

Install Silver Searcher
- Run `brew install the_silver_searcher`

Install fzf for fuzzy searching
- `brew install fzf`
- You'll see a helpful hint at the end something like
```
To install useful keybindings and fuzzy completion:
  /usr/local/opt/fzf/install
```
- Run that and agree to the three questions
- Finally add this line to your shell config `export FZF_DEFAULT_COMMAND='ag -g ""'`
- That line makes it so FZF will respect your .gitignore when searching

Create a custom-config.vim file
- This file is not tracked by git, it is where you should put all custom stuff. This helps avoid merge conflicts when doing a git pull.

- These are just files in ~/.vim/colors directory

Configure the mac terminal (for vim-move to work)
- In Terminal: Profiles -> Keyboard -> "Use Option as Meta key"
- In iTerm: Profiles -> Keys -> "Left option key acts as" +Esc

## NeoVim
### Installing neovim - (On Mac)
- `brew install neovim/neovim/neovim`

The command `nvim` should exist now, you could alias `vim` to `nvim` if you want  
Now you'll want python3 enabled for neovim to use the autocomplete functionality
- If you don't have python3 run `brew install python3`
- You should now have pip3
- Run `pip3 install neovim`
- Run the command `:echo has("python3")` inside of neovim
- If it returns `1` you're in business
- Run `:PluginInstall`
- Now run `:UpdateRemotePlugins` to enable deoplete (the autocomplete plugin)
- If it returns `0` this page could help https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim

Now you need neovim to run your vim settings  
- Run `mkdir ~/.config` (Unless you already have said directory)

Now symlink a `nvim` directory in here to your `.vim` directory (this repo)
- Run `ln -s ~/.vim ~/.config/nvim`

### ctrl+h tmux bug
If you're setting up NeoVim on Mac for the first time you should run the commands
```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
```
As per https://github.com/neovim/neovim/issues/2048#issuecomment-78045837  
Otherwise `ctrl + h` won't switch between panes in tmux

## Install font
I'd suggest FiraCode https://github.com/tonsky/FiraCode as a starting point
