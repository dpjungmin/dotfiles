if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="exa -F"
alias la="exa -aF"
alias ll="exa -lF"
alias lla="exa -alF"
alias tree="exa --tree --git-ignore"
alias cat=bat
alias vim=nvim
alias vs="nvim -S"
alias c=cargo
alias cz=chezmoi

set -x PATH $PATH /usr/local/bin
set -x PATH $PATH ~/.local/bin
set -x PATH $PATH ~/.emacs.d/bin
set -x PATH $PATH ~/.cargo/bin
set -x PATH $PATH ~/go/bin

set -Ux RUST_BACKTRACE 1

switch (uname)
    case Linux
        alias yank="xclip -selection clipboard"
    case Darwin
        set -x PATH $PATH /opt/brew/bin
    case '*'
end

# This will run the mkdir command, and if it is successful, change the current
# working directory to the one just created.
function mkcd -d "Create a directory and set CWD"
    command mkdir $argv
    if test $status = 0
        switch $argv[(count $argv)]
            case '-*'

            case '*'
                cd $argv[(count $argv)]
                return
        end
    end
end

zoxide init fish | source
starship init fish | source
