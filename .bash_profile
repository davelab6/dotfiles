alias wifimac='spoof-mac randomize wi-fi'
export PATH=/usr/local/share/npm/bin:/usr/local/opt/ruby/bin:/Users/dcrossland/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/python:$PATH
alias chownlocal='sudo chown -R dcrossland:wheel /usr/local'
alias lint='java -jar /Users/dcrossland/googlefontdirectory/tools/lint/dist/lint.jar $1'
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
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
alias ytd='echo youtube-dl --write-description --write-info-json -c -o "%(upload_date)s %(uploader_id)s - %(title)s - %(format)s - %(id)s" -F'
alias git=hub
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias githubupdateall='cd ~/src/github.com/; for repo in `ls -1d */*/`; do echo $repo; pushd . ; cd $repo; git pull; echo $repo " complete"; popd; done;'
alias githubupdatehere='for repo in `ls -1d *`; do echo $repo; pushd . ; cd $repo; git pull; echo $repo " complete"; popd; done;'
alias gp='git pull'
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi