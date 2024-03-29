# davelab6 installation notes for Mac OS X

Here are steps I take when setting up a new mac with OS X 10.11

## Settings

### System Preferences

* General: Highlight Color: Yellow. Ask to keep changes. Do not close windows. 
* Desktop: Black
* Screensaver: Start after 5 mins. Show with clock. Set message to contact info:

    dave@lab6.com
    @davelab6 
    +1 415 343 5226

* Dock: scale effect, autohide
* Mission Control: Do not rearrange. Dashboard as overlay. Hot Corners, set bottom left to desktop, bottom right null, top right screensaver. 
* Siri: Disable
* Language: First day is Monday, check 24 hour time, temperature is Celsius.
* Display: Scaled, 5/5; nightshift on sunset-to-sunrise. 
* Energy Saver: Schedule, sleep at 22:00 every day.
* Keyboard: Do not adjust key brightness; Show keyboard in menubar; Modifers, set Caps Lock to Command; Shortcut, all controls. If UK machine, Input Sources, add British, remove US. Remove Siri from touchbar.
* Trackpad: Look up off, Tap to click on, Swipe between pages with 3 fingers, Swipe between full-screen app off, Notification Center off
* Date and Time: Set timezone, use 24 hour clock, show date
* Accessibility: Zoom, Yes use scroll gesture (Command), no smoothing, yes follow


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

    defaults write com.apple.desktopservices DSDontWriteNetworkStores true;

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

Repeat keypresses

    defaults write -g ApplePressAndHoldEnabled -bool false

Finder prefs: Open in Home, Search in current folder

Enable `locate`

    sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

### git

     git config --global user.name "Dave Crossland" ;
     git config --global user.email dave@lab6.com ;
     git config --global push.default simple;
     git config --global core.editor "mate -w";

### App preferences

Finder

- Preferences (Cmd-,): New Finder windows show: home. Advanced, search in Current folder.
- Click Finder window (home), View, options (Cmd-J): Tick browse in icon view, show Library folder.
- Click Desktop, View, options (Cmd-J): Sort by, Date Created; Icons, 16x16; Grid spacing, Max. 
- View, show status bar

Music

- Preferences, Restrictions, iTunes Store (to check all)

## Installations

### Installer

- iLife
- Adobe CC
- GIMP
- Google Chrome Canary
- Inkscape
- iTerm2
- Keynote
- LibreOffice
- Microsoft Word
- rsync 3
- Sketch (Mac)
- Spotify
- TextMate
- VLC media player
- WhatsApp

### App Store

dave@lab6.com
- Wake Up Time.app

### brew

Install command line developer tools

    sudo xcode-select --install;

Install homebrew itself, but into a home directory location, not the typical system location:

    cd ~;
    mkdir homebrew;
    curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C homebrew;

Then append these lines to .bashrc

    # Homebrew Paths
    export PATH=$HOME/homebrew/bin:$PATH
    export LD_LIBRARY_PATH=$HOME/homebrew/lib:$LD_LIBRARY_PATH

a few tools,

    brew install hub bash-git-prompt wget irssi tree rename youtube-dl \
    irssi httrack jpegoptim watch icdiff thefuck pngcrush \
    optipng pandoc most ffmpeg libav imagemagick poppler; 

Install fontforge python

    brew install fontforge --with-giflib --with-extra-tools;

Install command-not-found and upgrade bash,

    brew tap homebrew/command-not-found;
    brew update && brew install bash;
    sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells';
    chsh -s /usr/local/bin/bash;
    brew install command-not-found;

Install cask-upgrade,

    brew tap buo/cask-upgrade;
    brew update;

Install quicklook plugins for better Finder previews,

    brew install \
    Caskroom/cask/quicklook-json \
    Caskroom/cask/emin-webpquicklook         Caskroom/cask/quicklook-pfm         \
    Caskroom/cask/epubquicklook              Caskroom/cask/quicklookei           \
    Caskroom/cask/osirix-quicklook           Caskroom/cask/ttscoff-mmd-quicklook \
    Caskroom/cask/quicklook-csv              Caskroom/cask/webpquicklook;
    qlmanage -r;

### casks

Install some apps via Homebrew Casks:

    brew install xquartz;
    brew install glyphs google-hangouts the-unarchiver inkscape gimp \
        fontforge flycut dropbox keepingyouawake chrome-devtools \
        codekit cyberduck disk-inventory-x \
        flux fontprep githubpulse google-earth-pro grandperspective \
        lighttable monolingual skyfonts robofont sequel-pro skim \
        skype snapz-pro-x sparkleshare the-unarchiver unrarx vlc calibre \
        coconutbattery ipartition ntfsmounter unicodechecker macdown quicksilver \
        captur textmate opera libreoffice google-chrome google-chrome-canary \
        firefox firefox-nightly java insync captur obs shiftit \
        riot slack fontgoogles;

Run KeepingYouAwake and set to run on login.

Run flux, start at login, set ZIP code.

Chrome, install app: gmail offline. Prefs, continue where you left off. Go to chrome://flags and enable 'Save Page as MHTML'

Chrome Canary, install app: gmail offline. Prefs, continue where you left off. Go to chrome://flags and enable 'Save Page as MHTML'

Flycut. Run on login, save after each clip, store 99, show 99, black icon, set hotkey to shift control option command v.

Monolingual, run and remove unneeded locales

Download and install synergy from <http://synergy-project.org/download>

InSync, Settings, Don't show popups. Account:
* Selective, My Drive, tick show files, tick partials, untick:
    * 1-Archive
	* Google Photos
* Selective, Shared: tick show files, tick partials.
* Convert: to OpenDocument
* Account: sync `Personal` to `~/Documents`


## links

I keep some handy symlinks in my home, and links to files stored in this repo:

    rsync -vvaP SERVER:.ssh/ .ssh/ ;
    cd ;
    mkdir -p src/github.com/davelab6 ;
    ln -s src/github.com/davelab6 davelab6 ;
    cd davelab6 ;
    git clone git@github.com:davelab6/dotfiles.git ;
    cd ;
    ln -s /Users/dcrossland/src/github.com/davelab6/dotfiles/.bash_profile .bash_profile ;
    ln -s /Users/dcrossland/src/github.com/davelab6/dotfiles/.gitconfig .gitconfig ;
    ln -s /Users/dcrossland/src/github.com/davelab6/dotfiles/.gitignore .gitignore ;
    mkdir .irssi ; 
    ln -s /Users/dcrossland/src/github.com/davelab6/dotfiles/irssi-config .irssi/config ;
    mkdir -p src/github.com/google ;
    cd src/github.com/google ;
    git clone git@github.com:google/fonts.git ;
    cd ;
    ln -s src/github.com/google/fonts fonts ;

## python

    sudo easy_install pip;
    pip2 install --user Mercurial;
    pip3 install --user --upgrade beautifulsoup4 ipython ipdb;

## font toolbox

Install `osxfonttools.dmg` from http://developer.apple.com

    cd ~/Downloads/ ;
    hdiutil attach osxfonttools.dmg ;
    mkdir -p /tmp/ftx ;
    cd /tmp/ftx ;
    cp "/Volumes/OS X Font Tools/OS X Font Tools.pkg" . ;
    xar -xf "OS X Font Tools.pkg" ;
    cd fontTools.pkg/ ;
    cat Payload | gunzip -dc | cpio -i ;
    sudo mv ftx* /usr/local/bin/

Install basic web font tools:

    brew cask install java;
    brew tap bramstein/webfonttools; 
    brew update; 
    brew install sfnt2woff sfnt2woff-zopfli woff2 ttf2eot sfntly vfb2ufo;
    brew install ots --HEAD;

Install fonttools from git master:

    sudo pip3 install --user git+git://github.com/behdad/fonttools.git;

Install pyfontaine:

    sudo CFLAGS=-I/usr/local/opt/icu4c/include LDFLAGS=-L/usr/local/opt/icu4c/lib pip2 install pyicu;
    sudo pip2 install --user git+git://github.com/davelab6/pyfontaine.git;

Install fontbakery from git master:

    mkdir -p ~/src/github.com/googlefonts;
    cd ~/src/github.com/googlefonts;
    git clone git@github.com:googlefonts/fontbakery.git;
    cd fontbakery;
    sudo pip install git+git://github.com/googlefonts/fontbakery.git;

Install fontmake

    mkdir -p ~/src/github.com/googlei18n;
    cd ~/src/github.com/googlei18n;
    git clone git@github.com:googlei18n/fontmake;
    cd fontmake;
    sudo python -m pip install -r requirements.txt;
    sudo python setup.py develop;

Install the latest version of ttfautohint from git master:

    brew install --HEAD ttfautohint --with-qt;

# Misc

https://github.com/wavexx/screenkey
