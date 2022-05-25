# Adam's dotfiles

You need to install the following pre-requisites:

 - pyevn
 - powerline
 - powerline-fonts
 - tmux

 Checkout this repo with:

     git clone git@github.com:kabads/dotfiles .dotfiles

Then, you'll need to check out the submodules with:

    cd ~/.dotfiles
    git submodule init
    git submodule update

This will download any submodules (usually, vim plugins) ready for installing. 

Then run with:

    ./install
