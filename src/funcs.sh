function xd() { 
    if [ -f $1 ] ; then
        xd 1
    else
        #creating a file and sourcing it. 
        xdcmd="\$(osascript -e 'tell app \"Finder\" to return the POSIX path of (target of window $1 as alias)')"
        #creating in home, to avoid permission issues
        echo -e "cd \"$xdcmd\"" > $DOTFOLDER/.xdhlscript_12345
 
        #sourcing because parent returns to original dir after child is completed
        . $DOTFOLDER/.xdhlscript_12345
        rm $DOTFOLDER/.xdhlscript_12345
    fi
}

function ck() { 
    if [ -f $1 ] ; then
        echo "Target branch"
    else
        git checkout $1;
        # git reset --hard;
        # git clean -f -d;
    fi
}

# Archives
 
function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
 
# Creates an archive (*.tar.gz) from given directory.
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
 
# Create a ZIP archive of a file or folder.
function makezip() { zip -r "${1%%/}.zip" "$1" ; }

# Zip compress all the files in this folder
function zipit() {
    if [ $# -eq 0 ]; then
        find . -name '.DS_Store' -type f -delete
        zip -r -X "${PWD##*/}" *
    else
        find . -name '.DS_Store' -type f -delete
        zip -r -X "$@" *
    fi;
}


# convert video files to audio
 
function mp32m4a(){
    mkdir outputs
    find . -type f -name "*.mp3" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" "outputs/${FILE%.mp3}.m4a";' _ '{}' \;
}

function mkv2mp3(){
  find . -type f -name "*.mkv" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -c:a libmp3lame -y "${FILE%.mkv}.mp3";' _ '{}' \;
}
 
function webm2mp3(){
  find . -type f -iname "*.webm" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";' _ '{}' \;
}
 
function mp42mp3(){ # mp4
  mkdir outputs
  for f in *.mp4; do ffmpeg -i "$f" -c:a libmp3lame"outputs/${f%.mp4}.mp3"; done
}
 
function many2mp3(){ # m4a, mov, flac
  mkdir outputs
  for f in *.{m4a,mov,flac}; do ffmpeg -i "$f" -c:a libmp3lame "outputs/${f%.*}.mp3"; done
}

function mp32aac(){ # m4a, mov, flac
    mkdir outputs
    for f in *.{mp3}; do ffmpeg -i "$f" -c:a libmp3lame "outputs/${f%.*}.m4a"; done
}
 
function vid2mp3(){ # any?
  mkdir outputs
  for f in *; do ffmpeg -i "$f" -c:a libmp3lame "outputs/${f%.*}.mp3"; done
}


# Move to the root directory of project.
# Works by checking for .git folder
function c() {
    if [ -d ".git" ] ; then
        cd "$(pwd)";
    else
        cd ..;
        c;
    fi
}

#make a dir and enter it
function mk(){
    if [ -f $1 ] ; then
        echo "usage: mk <dir-name>"
    else
        mkdir -p "$1"
        cd "$1"
        return
    fi
}
 
#creates a file using touch and opens it
function mx(){
    if [ -f $1 ] ; then
        s $1
    else
        touch "$1"
        subl "$1"
        return
    fi
}
 
# open file or directory in sublime
function s() {
    if [ $# -eq 0 ]; then
        subl .;
    else
        subl "$@";
    fi;
}


function vget() {
    youtube-dl \
    --write-all-thumbnails \
    --embed-thumbnail \
    --write-info-json \
    --external-downloader aria2c \
    "$@"
}



 


clippy() {
    last=''
    while :
    do
        current=$(pbpaste)

        if [[ "$current" == "$last" ]]; then
            /bin/sleep 0.3 > /dev/null
        else
            echo "Downloading $current"
            wget -q $(pbpaste) &
            last=$current
        fi
    done
}

function slippy() {
    # I couldn't think of a better name..
    last=''
    while :
    do
        current=$(pbpaste)

        if [[ "$current" == "$last" ]]; then
            /bin/sleep 0.3 > /dev/null
        else
            echo "Downloading $current"
            aria2c "$(pbpaste)" &
            last=$current
        fi
    done  
}

function acon() {
    # Activates conda environment. Activates my Thesis env by default.
    # You should change that.
    source /Users/aravind/miniconda3/bin/activate

    if [ $# -eq 0 ]; then
        conda activate Thesis;
    else
        conda activate "$@";
    fi;
}


