alias sd sudo

alias mk touch
alias mkd mkdir
alias rmd "rm -r"

alias . "cd .."
alias .. "cd ../.."
alias ... "cd ../../.."

function c
    if [ "$argv[1]" = "" ]
        clear
    else
        cd $argv[1]
    end
end

alias s "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink"

alias 1 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 2"
alias 2 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 3"
alias 3 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 4"
alias 4 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 5"
alias 5 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 6"
alias 6 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 7"
alias 7 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 8"
alias 8 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 9"
alias 9 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 10"

alias f fd
alias ct cat
alias r ranger

alias d "dysk -a"
alias ff fastfetch

function x
    if [ "$(uname)" = Linux ]
        hyprctl dispatch killactive
    else
        if [ $t = 0 ]
          killall $t0
        else
          killall $t1
        end
    end
end

alias cla "wc -l ./**"
alias cl "wc -l"

alias i "./install.sh"
alias u "./update.sh"
