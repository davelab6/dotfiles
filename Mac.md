# davelab6 dotfiles for Mac OS X

This repo contains some of my dotfile.
Below are some notes I took when setting up a new mac with OS X 10.10.

## Settings

### System Preferences

* Display: Scaled, 4/5
* General: Highlight Color: Yellow
* Desktop: Black
* Accessibility: Zoom, use Command, unset Smooth
* Screensaver: Set message to contact info 
```
dave@lab6.com
@davelab6 
+44 777 3383 772
+1 415 343 5226
```
* Dock: scale effect, autohide
* Mission Control: Do not rearrange. Dashboard as space. Hot corners, lower left shows desktop, lower right is nothing. 
* Language: Region is UK
* Keyboard: Do not adjust key brightness; Show keyboard in menubar; Modifers, turn off Caps Lock; Shortcut, all controls. Input Sources, add British, remove US.
* Trackpad: Tap to click on, Look up off, scroll direction off, Swipe between pages with 3 fingers, Swipe between full-screen app off, Notification Center off
* Date and Time: Set timezone, use 24 hour clock, show date
* Accessibility: Use scroll gesture (Command), no smoothing, yes follow

Terminal - to enable alt-arrows to move words, alt-d to delete next word, go to Preference, Profiles, Keyboard, and set Use Option Key as Meta

Set Dock size, transparent hidden windows

    defaults write com.apple.dock tilesize -int 24; 
    defaults write com.apple.Dock showhidden -bool YES;
    killall Dock;

Set full screen and panel animations to instant

    defaults write -g NSWindowResizeTime -float 0.001;
    defaults write NSGlobalDomain NSWindowResizeTime 0.001;
    defaults write -g QLPanelAnimationDuration -float 0;

Do not use shadows in screenshots

    defaults write com.apple.screencapture disable-shadow -bool true
    killall SystemUIServer; # restarts UI, watch out

Select text in quicklook, always show 

    defaults write com.apple.finder QLEnableTextSelection -bool TRUE;
    defaults write com.apple.Finder QLHidePanelOnDeactivate 0;
    killall Finder;

Don’t create `.DS_store` files

    defaults write com.apple.desktopservices DSDontWriteNetworkStores TRUE;

Show file extensions

    defaults write NSGlobalDomain AppleShowAllExtensions -bool true;
    killall Finder;

Don’t prompt on file extension change

    defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false;
    killall Finder;

Show Library folder in home:

    chflags nohidden ~/Library/

Show full path in title bar

    defaults write com.apple.finder _FXShowPosixPathInTitle -bool true;
    killall Finder;

Don’t scroll bounce on the end: 

    defaults write -g NSScrollViewRubberbanding -int 0;


Disable 2 finger chrome swipe

    defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE

Dont blink caret

    defaults write -g NSTextInsertionPointBlinkPeriod -int 9999999999999999;

Finder prefs: Open in Home, Search in current folder

Enable `locate`

    sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

### git

     git config --global user.name "Dave Crossland" ;
     git config --global user.email dave@lab6.com ;
     git config --global push.default simple;
     git config --global core.editor "mate -w";

## Installations

### Installer

- [x] XCode.app
- [x] VMware Fusion.app
- [x] TextMate.app
- [x] SnipIt
- [x] Opera
- [x] mercurial
- [x] MacTex
- [x] MacIrssi
- [x] LibreOffice.app
- [x] Java
- [x] Snagit.app
- [x] gpylint
- [x] iLife
- [x] Google Chrome Canary.app
- [x] Google Chrome.app
- [x] Firefox.app
- [x] Camtasia 2.app
- [x] Adobe CC
- [x] Adobe Reader.app
- [x] osxfonttools.dmg (fetched from http://developer.apple.com)

### App Store

dave@lab6.com
- [x] Wake Up Time.app

### brew

Install homebrew itself,

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
    sudo xcodebuild -license;

spoofmac,

    brew install spoof-mac;
    sudo cp -fv /usr/local/opt/spoof-mac/*.plist /Library/LaunchDaemons;
    sudo chown root /Library/LaunchDaemons/homebrew.mxcl.spoof-mac.plist;
    sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.spoof-mac.plist;

a few tools,

    brew install hub bash-git-prompt wget ttfautohint irssi tree rename youtube-dl;
    brew install homebrew/x11/meld httrack jpegoptim watch; 

Install bram's web font tools 

    brew tap bramstein/webfonttools; brew update; 
    brew install sfnt2woff sfnt2woff-zopfli woff2 ttf2eot sfntly fonttools; 

Install fontforge python

    brew install fontforge --HEAD --with-giflib --with-extra-tools;

Install command-not-found

    brew tap homebrew/command-not-found;
    if brew command command-not-found-init > /dev/null; then eval "$(brew command-not-found-init)"; fi

### casks

Install cask and some apps

    brew install caskroom/cask/brew-cask
    brew cask install glyphs google-hangouts the-unarchiver inkscape gimp fontforge flycut dropbox audacity keepingyouawake chrome-devtools google-chrome codekit cyberduck dia cocoadialog disk-inventory-x flux fontprep github-desktop githubpulse google-earth grandperspective lighttable monolingual skyfonts nocturne robofont sequel-pro skim skype snapz-pro-x sparkleshare the-unarchiver unrarx vlc calibre coconutbattery ipartition ntfsmounter unicodechecker macdown quicksilver captur;
    brew install Caskroom/cask/captur

Run caffeine and set to run on login.

Chrome, install app: gmail offline. Prefs, continue where you left off

Chrome Canary, install app: gmail offline. Prefs, continue where you left off

Flycut. Run on login, save after each clip, store 99/99, black icon. 

Monolingual, run and remove unneeded locales

Download and install synergy from <http://synergy-project.org/download>

## links

I keep some handy symlinks in my home:

    ln -s Documents/GOOG/FONTDIR/googlefontdirectory-clean googlefontdirectory ;
    ln -s src/github.com/davelab6 davelab6 ;
    ln -s src/github.com/google/fonts fonts ;
    ln -s src/googlefontdirectory-messed googlefontdirectory-messed ;
    ln -s /Users/dcrossland/src/github.com/davelab6/dotfiles/.bash_profile ~/.bash_profile ;

## python

    sudo easy_install pip;
    sudo pip install beautifulsoup4;
