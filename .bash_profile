alias wifimac='spoof-mac randomize wi-fi'
export PATH=/usr/local/share/npm/bin:/usr/local/opt/ruby/bin:/Users/dcrossland/.local/bin:/usr/local/sbin:/usr/local/bin:$PATH
alias chownlocal='/usr/bin/sudo /bin/chmod g+rwx /usr/local/. /usr/local/bin /usr/local/etc /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/man/man5 /usr/local/share/man/man8 /usr/local/share/info /usr/local/share/doc; /usr/bin/sudo /usr/sbin/chown dcrossland /usr/local/. /usr/local/bin /usr/local/etc /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/man/man5 /usr/local/share/man/man8 /usr/local/share/info /usr/local/share/doc; /usr/bin/sudo /usr/bin/chgrp admin /usr/local/. /usr/local/bin /usr/local/etc /usr/local/lib /usr/local/sbin /usr/local/share /usr/local/share/man /usr/local/share/man/man1 /usr/local/share/man/man5 /usr/local/share/man/man8 /usr/local/share/info /usr/local/share/doc; '
alias lint='java -jar /Users/dcrossland/googlefontdirectory/tools/lint/dist/lint.jar $1'
export HISTFILESIZE=10000
export EDITOR="mate -w"
export VISUAL="mate -w"
export HOMEBREW_EDITOR="mate -w"
alias cp='rsync -a --stats --progress'
alias c='/bin/cp'
alias r='/bin/rm'
function rm() {
   mv "${@}" /tmp/
}
alias ctup='rsync -vvaP /Users/dcrossland/src/github.com/craftingtype/craftingtype.com/*/*/register*html dcrossland@tug.org:ct/'
alias ul='ssh -vv understandinglimited@understandinglimited.com'
alias ffroot='ssh -vv root@fontforge.default.fontforge.uk0.bigv.io'
alias ffdc='ssh -vv davelab6@fontforge.default.fontforge.uk0.bigv.io'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias al3='pyfontaine --set "Adobe Latin 3"'
alias ytdl='youtube-dl --write-description --write-info-json -c -o "%(upload_date)s %(uploader_id)s - %(title)s - %(format)s - %(id)s" -F ${@}'
alias ytdf='youtube-dl --write-description --write-info-json -c -o "%(upload_date)s %(uploader_id)s - %(title)s - %(format)s - %(id)s" -f ${@}'
alias git=hub
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias githubupdateall='cd ~/src/github.com/; for repo in `ls -1d */*/`; do echo $repo; pushd . ; cd $repo; git pull; echo $repo " complete"; popd; done;'
alias githubupdatehere='for repo in `ls -1d *`; do echo $repo; pushd . ; cd $repo; git pull; echo $repo " complete"; popd; done;'
alias gp='git pull'
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi
alias grp='git reset --hard ; git pull'
alias gd='git diff'
alias gs='git status'
alias gitcorp='git credential-corpsso login; git config user.email dcrossland@google.com;'
eval "$(thefuck --alias)";
if brew command command-not-found-init > /dev/null; then
  eval "$(brew command-not-found-init)";
fi
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
# make a command for sorting by length, like 
# cat testfile | awk '{ print length, $0 }' | sort -n | cut -d" " -f2-
