wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CommitMono.zip


mkdir ~/.fonts

unzip CommitMono.zip -d ~/.fonts

rm CommitMono.zip

fc-cache -fv

echo "gnome-terminal; go to preferences and change font to CommitMono"
