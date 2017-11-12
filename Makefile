.PHONY: all layout git bash

all: layout git bash

git:
	@git config --global user.name "Zachary Neal"
	@git config --global user.email "zachary.neal@icloud.com"

layout:
	@mkdir -p ~/.config ~/.local/bin
	@mkdir -p ~/Code/go/{src,pkg,bin}

bash: layout
	@rm -f ~/.bash_profile ~/.bashrc ~/.inputrc
	@ln -s $(abspath bash/bash_profile) ~/.bash_profile
	@ln -s $(abspath bash/bashrc) ~/.bashrc
	@ln -s $(abspath bash/inputrc) ~/.inputrc
