brew install zsh

echo "Need your password to set Zsh as default shell"
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
echo "Done. Restart your computer for it to update."

