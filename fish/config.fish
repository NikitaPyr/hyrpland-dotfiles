# ===================================
#            FISH CONFIG
# ===================================

set -g fish_greeting ""

# ==== PYENV ====
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

if status --is-interactive
    pyenv init - | source
    pyenv virtualenv-init - | source
end

# ==== SSH_AGENT ====
if not set -q SSH_AGENT_PID
    eval (ssh-agent -c)
end

ssh-add -l > /dev/null 2>&1; or ssh-add ~/.ssh/id_rsa

# ==== BTOP (sudo с кастомным конфигом) ====
function sbtop
    sudo btop --config ~/.config/btop/btop.conf
end
alias sb="sbtop"
