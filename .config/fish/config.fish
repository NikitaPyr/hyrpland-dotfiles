set -g fish_greeting ""
set -g EDITOR nvim
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

if status --is-interactive
    if type pyenv >/dev/null 2>&1
        pyenv init - | source
        pyenv virtualenv-init - | source
    end
end

function sbtop
    sudo btop --config ~/.config/btop/btop.conf
end

function showfiles
    find . -type f -not -path './.*/*' | while read file
        echo "===== $file ====="
        cat $file
    end
end

function mirrorrank
	sudo rate-mirrors --protocol=https --allow-root --entry-country=BY --disable-comments-in-file --save /etc/pacman.d/mirrorlist arch
end

