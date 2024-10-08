set fish_greeting ""
set -gx TERM xterm-256color
#fish_vi_key_bindings

# ==================================
#             ALIASES
# ==================================
alias v nvim

alias gi "git init"
alias gs "git status"
alias ga "git add"
alias gc "git commit"
alias gl "git log"

if type -q xclip
    alias xclip "xclip -i -selection clipboard"
end 

alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
if type -q eza
    alias ls "eza --grid --color=auto --icons"
    alias la "eza -a --grid --color=auto --icons"
    alias ll "eza -l --icons --no-user --group-directories-first  --time-style long-iso -T -L2"
    alias lla "eza -la --icons --no-user --group-directories-first  --time-style long-iso -T -L2"
end

# ==================================
#             PATH
# ==================================
set -gx EDITOR nvim
# set -gx PATH bin $PATH
# set -gx PATH ~/bin $PATH
# set -gx PATH ~/.local/bin $PATH

# ==================================
#             AUTOSTART
# ==================================
if type -q starship
	starship init fish | source
end
