# Adam's dotfiles

This repo is meant to be used with Dotbot: https://github.com/anishathalye/dotbot. 

You need to install the following pre-requisites:

 - pyenv
 - powerline
 - powerline-fonts
 - tmux
 - fzf
 - fzf-zsh-plugin

 Checkout this repo with:

     git clone git@github.com:kabads/dotfiles .dotfiles

Then, you'll need to check out the submodules with:

    cd ~/.dotfiles
    git submodule init
    git submodule update

This will download any submodules (usually, vim plugins) ready for installing. 

Then run with:

    ./install

## Ansible

Packages can be installed using Ansible and the `bootstrap.yml` file. Install Ansible (`pip install --user ansible` or `sudo apt-get install ansible`, and then run `ansible-playbook -K bootstrap.yml` to install the necessary tools).  

Some machines may need to have the brew galaxy installed with `ansible-galaxy collection install community.general`.

## Other Useful software 
- bat (cat alternative)
- nnn (file explorer)

## Pyenv

Pyenv is documented here: https://github.com/pyenv/pyenv

If pyenv is used to manage python installations, you should choose your python version with `pyenv global system` (replace system with the version you wish to run, and then install `powerline-status` with `pip install powerline-status`. Then bash problems will go away.

You can also manage which version of python is being used with a `~/.python-version` file. Just place the version that you wish to use in there and you can change versions of python simply. 
