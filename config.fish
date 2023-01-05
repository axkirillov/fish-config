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

# this is for webi that i have to use to install old k9s
# https://github.com/derailed/k9s/issues/1619
# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"
