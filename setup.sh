DOTFOLDER="$HOME/.dotfiles"
GITHUBREPO="https://raw.githubusercontent.com/zeroby0/dotfiles/master/src/"

cd $HOME
curl -fsSLO "$GITHUBREPO/.hyper.js"
rm -rf $DOTFOLDER
mkdir $DOTFOLDER && cd $_
curl -fsSLO "$GITHUBREPO/aliases.sh"
curl -fsSLO "$GITHUBREPO/funcs.sh"
curl -fsSLO "$GITHUBREPO/myz.sh"

echo "source $HOME/.dotfiles/myz.sh" >> "$HOME/.zshrc"
source $HOME/.dotfiles/myz.sh












