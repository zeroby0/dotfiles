

$DOTFOLDER="$HOME/.dotfiles"
$GITHUBREPO="https://raw.githubusercontent.com/zeroby0/dotfiles/master/src/"

mkdir $DOTFOLDER && cd $_
curl -fsSLO "$GITHUBREPO/aliases.sh"
curl -fsSLO "$GITHUBREPO/funcs.sh"
curl -fsSLO "$GITHUBREPO/myz.sh"
curl -fsSLO "$GITHUBREPO/subl"

echo "source $HOME/.dotfolder/myz.sh" >> "$HOME/.zshrc"











