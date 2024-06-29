exit 0 
cp .tmux.conf ~/

git clone https://github.com/tmux-plugins/tpm
rm -rf ~/.tmux/plugins/tpm
mv tpm ~/.tmux/plugins/tpm
rm -rf tpm


tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/scripts/install_plugins.sh

#echo "tmux; ctrl+space and I to install tpm plugins"


