# ===================================
#            FISH CONFIG
# ===================================

set -g fish_greeting ""
set -g EDITOR nvim

# ==== PYENV ====
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

if status --is-interactive
    pyenv init - | source
    pyenv virtualenv-init - | source
end

# ==== BTOP (sudo с кастомным конфигом) ====
function sbtop
    sudo btop --config ~/.config/btop/btop.conf
end
alias sb="sbtop"

