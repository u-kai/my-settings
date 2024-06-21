CURSOR_DIR=~/Library/Application\ Support/Cursor/User

cp -r cursor/keybindings $CURSOR_DIR
cp -r cursor/settings $CURSOR_DIR
cp -r cursor/.vimrc.vscode ~/.vimrc.vscode

cat cursor/extensions | while read line; do
  code --install-extension $line
done
