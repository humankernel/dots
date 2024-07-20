set fish_greeting ""
set -gx TERM xterm-256color
#fish_vi_key_bindings

# ==================================
#             ALIASES
# ==================================
alias v nvim

# git 
alias gi "git init"
alias gs "git status"
alias ga "git add"
alias gc "git commit"
alias gl "git log"
if type -q better-commits
    alias bc "better-commits"
end 

alias xclip "xclip -i -selection clipboard"

# ls
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

# ==================================
#             PATH
# ==================================
set -gx EDITOR nvim
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# ==================================
#             AUTOSTART
# ==================================
if type -q starship
	starship init fish | source
end
