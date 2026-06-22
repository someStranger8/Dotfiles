
# install yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

# install dotfiles
git clone https://github.com/somestranger8/dotfiles
cd dotfiles
rm -rf Screenshots README.md
mv Wallpapers ~
mkdir ~/.config
mv * ~/.config

# install packages
yay -S hyprland ly alacritty awww waybar-cava dunst fish tofi matuwall hyprlock hyprshot ttf-hack-nerd ttf-apple-emoji uwsm neovim firefox discord spotify steam
