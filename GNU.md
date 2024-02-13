# davelab6 dotfiles for GNU systems

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

## keyboard

If using a Microsoft Natural Ergpnomic Keyboard 4000, set up the scroller in the center with

    sudo udevadm hwdb --update;

Insert:

```
keyboard:usb:v045Ep00DB*
 KEYBOARD_KEY_0c022d=pageup
 KEYBOARD_KEY_0c022e=pagedown
```

Then run

    sudo udevadm hwdb --update;
    sudo udevadm control --reload;

And finally replug the USB connection :) 

## applications

* [gitlab.com/screenkey/screenkey](https://gitlab.com/screenkey/screenkey)
