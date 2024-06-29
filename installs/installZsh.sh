sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

sed -i '/ZSH_THEME/d' ~/.zshrc
./prepend.sh ~/.zshrc "ZSH_THEME='gnzh'"

echo 'alias ls="eza --icons"' >> ~/.zshrc
echo 'alias ccat="cat"' >> ~/.zshrc
echo 'alias bat="bat"' >> ~/.zshrc
echo 'alias dat="bat -p"' >> ~/.zshrc
echo 'export VISUAL=vim' >> ~/.zshrc
echo 'export EDITOR="$VISUAL"' >> ~/.zshrc
echo 'export PICO_SDK_PATH=~/pico/pico-sdk' >> ~/.zshrc
echo 'export PICO_EXAMPLES_PATH=~/pico/pico-examples' >> ~/.zshrc
echo 'export PICO_SDK_PATH=~/pico/pico-sdk' >> ~/.zshrc
echo 'export PICO_EXAMPLES_PATH=~/pico/pico-examples' >> ~/.zshrc
echo 'figlet -c `fortune` | lolcat' >> ~/.zshrc
echo 'alias get_idf=". /home/jur/esp/esp-idf/export.sh"' >> ~/.zshrc
echo 'source /usr/share/doc/fzf/examples/key-bindings.zsh' >> ~/.zshrc
echo 'export HISTSIZE=1000000000' >> ~/.zshrc

