# .bashrc

# Autostart tmux
#if [[ ! $TERM =~ screen ]]; then
#	exec tmux
#fi

# EXPORTS
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export TERM="xterm-256color"
export EDITOR="vim"
export GOPATH="/home/axnion/Dev/go"
export BROWSER="/usr/bin/google-chrome-stable"

# ALIASES
alias dockerpurge='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'

# Powerline-Go
function _update_ps1() {
		    PS1="$(powerline-go -error $?)"
}

if [ "$TERM" != "linux" ]; then
	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi