# ===================================
#            FISH CONFIG
# ===================================

# Без приветствия
set -g fish_greeting ""
set -g EDITOR nvim

# ==== PYENV ====
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

if status --is-interactive
    if type pyenv >/dev/null 2>&1
        pyenv init - | source
        pyenv virtualenv-init - | source
    end
end

# ==== ALIAS / FUNCTIONS ====
# Btop с кастомным конфигом
function sbtop
    sudo btop --config ~/.config/btop/btop.conf
end

# Быстрый вывод всех файлов с разделителями
function showfiles
    find . -type f -not -path './.*/*' | while read file
        echo "===== $file ====="
        cat $file
    end
end

