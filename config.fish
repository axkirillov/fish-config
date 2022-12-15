source $HOME/fish/globals.fish
source $HOME/fish/aliases.fish
source $HOME/fish/bindings.fish

# functions are in $HOME/fish/
for file in $HOME/fish/functions/*.fish
	source $file
end

# initializations go at the end:
# prompt 
starship init fish | source
# rbenv
status --is-interactive; and rbenv init - fish | source

set PATH (go env GOPATH)/bin:$PATH

if status is-interactive
and not set -q TMUX
    exec tmux
end
