install: clean symlinks vundle bundles google-java-format

clean:
	rm -rf ${PWD}/.vim/bundle/*
	rm -rf ~/.vim
	rm -rf ~/.vimrc

vundle:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

google-java-format:
	curl -Lo ${PWD}/.vim/google-java-format-all-deps.jar https://github.com/google/google-java-format/releases/download/google-java-format-1.6/google-java-format-1.6-all-deps.jar

symlinks:
	ln -s ${PWD}/.vim ~/.vim
	ln -s ${PWD}/.vimrc ~/.vimrc

bundles:
	vim +BundleInstall! +qall

bundles-clean:
	rm -rf ${PWD}/.vim/bundle/*
	make vundle
	make bundles
