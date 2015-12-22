# davelab6 dotfiles for Mac OS X

This repo contains some of my dotfile.
Below are some notes I took when setting up a new trisquel 7 machine bought from GLUGLUG at Libre Planet 2014.

### git

    apt-get install git mercurial;
    git config --global user.name "Dave Crossland" ;
    git config --global user.email dave@lab6.com ;
    git config --global push.default simple;
    git config --global core.editor "gedit -w";

    mkdir -p ~/src/github.com/davelab6;
    cd ~/src/github.com/davelab6;
    git clone https://github.com/davelab6/dotfiles.git;
    ln -s /Users/dcrossland/src/github.com/davelab6/dotfiles/.bash_profile ~/.bash_profile ;


    apt-get install install irssi tree rename youtube-dl meld inkscape gimp sparkleshare vlc;

    cd ~/src/github.com;
    mkir google; cd google;
    git clone git@github.com:google/fonts.git ;
    ln -s src/github.com/davelab6 davelab6 ;
    ln -s src/github.com/google/fonts fonts ;

## python

    sudo easy_install pip;
    sudo pip install beautifulsoup4;
