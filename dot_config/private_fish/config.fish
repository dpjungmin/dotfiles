if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="exa -F"
alias la="exa -aF"
alias ll="exa -lF"
alias lla="exa -alF"
alias tree="exa --tree"
alias cat=bat
alias vim=nvim
alias vs="nvim -S"
alias c=cargo
alias cz=chezmoi

set -x PATH $PATH /usr/local/bin
set -x PATH $PATH ~/.local/bin
set -x PATH $PATH ~/.emacs.d/bin
set -x PATH $PATH ~/.cargo/bin
set -X PATH $PATH ~/go/bin

set -Ux RUST_BACKTRACE 1

switch (uname)
    case Linux
    case Darwin
        set -x PATH $PATH /opt/brew/bin
    case '*'
end

zoxide init fish | source
starship init fish | source
