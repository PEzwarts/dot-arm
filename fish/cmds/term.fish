function v
    if [ "$(uname)" = Linux ]
        if [ $t = 0 ]
          $t0 -- -c ":lua vim.g.term = false" & disown
        else
          $t1 --command nvim -c ":lua vim.g.term = false" & disown
        end

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        hyprctl dispatch killactive
    else
        if [ $t = 0 ]
          killall $t0
          $t0 -- -c ":lua vim.g.term = false" & disown
        else
          killall $t1
          $t1 --command nvim -c ":lua vim.g.term = false" & disown
        end
    end
end

function vb
    if [ "$(uname)" = Linux ]
        if [ $t = 0 ]
          $t0 -- -c ":lua vim.g.write = true" & disown
        else
          $t1 --command nvim -c ":lua vim.g.write = true" & disown
        end

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        librewolf & disown
        hyprctl dispatch killactive
    else
        if [ $t = 0 ]
          killall $t0
          $t0 -- -c ":lua vim.g.write = true" & disown
        else
          killall $t1
          $t1 --command nvim -c ":lua vim.g.write = true" & disown
        end
    end
end

export EDITOR=nvim
