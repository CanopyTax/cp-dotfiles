echo "Installing cpr-dotfiles"
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Installing Vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"
fi
if [ ! `brew ls --version the_silver_searcher`]; then
	echo "Installing Silver Searcher"
	brew install the_silver_searcher
fi

