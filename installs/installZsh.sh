sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

sed -i '/ZSH_THEME/d' ~/.zshrc
./prepend.sh ~/.zshrc "ZSH_THEME='gnzh'"


