git clone https://github.com/PEzwarts/dot

# Neovim
cp -r ./dot/nvim/ ~/.config/

# Fish
cp -r ./dot/fish/ ~/.config/

# Alacritty
cp -r ./dot/alacritty/ ~/.config/

# Hyprland
cp -r ./dot/hypr/ ~/.config/

cp -r ./dot/gtk-3.0/ ~/.config/
cp -r ./dot/gtk-4.0/ ~/.config/

hyprctl reload

sed -i "s/set t 0/set t 1/g" ~/.config/fish/config.fish
