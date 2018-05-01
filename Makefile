.PHONY: all layout git bash vim

all: layout git bash

git:
	@git config --global user.name "Zachary Nack"
	@git config --global user.email "zachary.nack@icloud.com"

vim:
	@rm -f ~/.vim
	@ln -s $(abspath vim) ~/.vim

layout:
	@mkdir -p ~/.config ~/.local/bin
	@mkdir -p ~/Code/go/{src,pkg,bin}

bash: layout
	@rm -f ~/.bash_profile ~/.bashrc ~/.inputrc
	@ln -s $(abspath bash/bash_profile) ~/.bash_profile
	@ln -s $(abspath bash/bashrc) ~/.bashrc
	@ln -s $(abspath bash/inputrc) ~/.inputrc
