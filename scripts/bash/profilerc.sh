export PATH=$PATH:~/bin
export PS1="[\[\033[1;31m\]\u\[\033[0;00m\]\[\033[0;00m\]@\[\033[0;00m\]\[\033[0;34m\]\h\[\033[0;00m\]:\[\033[0;36m\]\W\[\033[0;00m\]]\s\$ "
export PAGER=less
export VISUAL=nvim
export EDITOR=nvim
export GOPATH=/home/cameron/dev/go
export GITHUB_USERNAME='Anadian';
export PATH=$PATH:~/dev/go/bin;
alias ls-plus='ls -GAFosh'
#alias date-iso-utc='date -ju +%Y-%m-%dT%H:%M:%S%z'
#alias date-iso='date -j +%Y-%m-%dT%H:%M:%S%z'
alias date-iso='date +%Y-%m-%dT%H:%M:%S%z';
alias data-iso-utc='date -u +%Y-%m-%dT%H:%M:%S%z';
alias wget-plus='wget -nH -np -k -r'
alias vi='nvim';
alias vim='nvim';
alias terminal-emulator='ps -o "command=" -p $(ps -o "ppid=" -p $$)'
#alias gtb='git branch'
#alias gtc='git checkout'
#alias gtm='git merge'
#alias gaa='git add --all'
git config --global init.defaultBranch 'main';
git config --global alias.b branch
git config --global alias.ck checkout
git config --global alias.m merge
git config --global alias.aa 'add --all'
git config --global alias.a add
git config --global alias.co commit
git config --global alias.cl clone
git config --global alias.pom 'pull origin main'
git config --global alias.pow 'pull origin wip'
git config --global alias.unstage 'reset HEAD ---'
git config --global alias.last 'log -l HEAD'
git config --global alias.cg 'config --global'
git config --global alias.change '!git add --all . && git commit -m '
alias ssh-mbp='ssh -v cameron@192.168.0.105'
alias ftp-mbp='sftp -v cameron@192.168.0.105'
alias ssh-phone='ssh -v nemo@192.168.2.25'
alias ftp-phone='sftp -v nemo@192.168.2.25'
alias ssh-ubuntu='ssh -v cameron@192.168.0.177'
alias ftp-ubuntu='sftp -v cameron@192.168.0.177'
if [[ $(uname -o) == 'GNU/Linux' ]]; then
	set meta-flag on;
	set input-meta on;
	set convert-meta on;
	set output-meta on;
fi
#if [[ $HOSTNAME == Anad-MBP* ]]; then
#	sudo cron -x ext,load,pars,misc,proc
#fi
