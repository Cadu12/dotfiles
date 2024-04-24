set fish_greeting ""
set -gx TERM xterm-256color

command -qv nvim && alias vim nvim

alias dotfiles='/opt/homebrew/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

source ~/.aliases

set -gx EDITOR nvim

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end
