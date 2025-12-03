set -g fish_greeting ""
set -g EDITOR nvim
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

if status --is-interactive
    if type -q pyenv
        pyenv init - | source
        pyenv virtualenv-init - | source
    end
end

zoxide init fish | source

alias ls="exa --icons --group-directories-first $argv"
alias ll="exa -l --icons --group-directories-first $argv"
alias la="exa -la --icons --group-directories-first $argv"
alias grep="rg $argv"
alias sbtop="sudo btop --config ~/.config/btop/btop.conf"
alias mirrorrank="sudo rate-mirrors --protocol=https --allow-root --entry-country=BY --disable-comments-in-file --save /etc/pacman.d/mirrorlist arch"
alias aboutme="fastfetch -c all -l none"
