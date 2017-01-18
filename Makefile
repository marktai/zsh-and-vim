default: install

copy: clean_src
	rsync -a ~/.vim* ~/.zshrc ~/.oh-my-zsh ~/.ssh/authorized_keys ~/.tmux.conf . --exclude=.vim/_backup/* --exclude=.vim/_swap/* .

package: clean
	tar -czf settings.tar.gz .vim* .zshrc .oh-my-zsh authorized_keys .tmux.conf --exclude=.vim/_backup/* --exclude=.vim/_swap/*

install: package clean
	mkdir tmp
	tar -xzf settings.tar.gz -C tmp
	-mkdir -m 700 ~/.ssh
	mv tmp/authorized_keys ~/.ssh
	mv tmp/* ~/

clean:
	rm -rf tmp *.tar.gz

clean_src:
	rm -rf .vim* .zshrc .oh-my-zsh authorized_keys .tmux.conf
