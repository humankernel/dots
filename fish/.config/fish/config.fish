set fish_greeting ""
#fish_vi_key_bindings
set -gx TERM xterm-256color

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# ==================================
#             ALIASES
# ==================================
alias codes "cd /mnt/d/learn/_codes/"
# for managing .dots with git bare 
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

# exa: better ls
if type -q exa
    alias ls "exa --grid --color=auto --icons"
    alias la "exa -a --grid --color=auto --icons"
    alias ll "exa -l --icons --no-user --group-directories-first  --time-style long-iso -T -L2"
    alias lla "exa -la --icons --no-user --group-directories-first  --time-style long-iso -T -L2"
end

# bat: better cat
if type -q bat
    alias cat "bat"
end

alias g git
alias v nvim

alias netup="sudo systemctl start NetworkManager"
alias netdown="sudo systemctl stop NetworkManager"

# ==================================
#             PATH
# ==================================
set -gx EDITOR vim
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# ==================================
#             AUTOSTART
# ==================================
if type -q starship
	starship init fish | source
end

# pnpm
set -gx PNPM_HOME "/home/strange/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
