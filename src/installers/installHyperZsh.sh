#
# Install HyperZsh theme
# https://github.com/tylerreckart/hyperzsh
#

mkdir $ZSH_CUSTOM/themes
wget -O $ZSH_CUSTOM/themes/hyperzsh.zsh-theme https://raw.githubusercontent.com/tylerreckart/hyperzsh/master/hyperzsh.zsh-theme

# Set the ZSH_THEME string to hyperzsh
# It's the 10th line, usually
awk 'NR==10 {$0="ZSH_THEME=\"hyperzsh\""} { print }' .zshrc > .zshrc