# Sherin's Fish Shell Configuration
# Author: Sherin Stephen
# Repository: https://github.com/ssheeriin/dotfiles
# License: MIT

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls "lsd"
    alias vi "nvim"
    # alias vig "neovide" # commented out because when using vig &, it still runs in the foreground, TODO: fix this later
    alias cat "bat"		
end

# Set up environment variables
set -x EDITOR nvim 

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
