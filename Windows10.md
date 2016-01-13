start, run, powershell

    set-executionpolicy unrestricted -s cu

    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

    scoop install python 7zip unzip zip tar shasum rsync git vagrant 
    scoop install openssh
    [environment]::setenvironmentvariable('GIT_SSH', (resolve-path (scoop which ssh)), 'USER')


go to http://www.virtualbox.org and download and install virtualbox

install https://getsharex.com/
