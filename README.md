# Dotfiles
> For lazy people like me

To install, run this in your terminal.
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/zeroby0/dotfiles/master/setup.sh)"`

Best used with MacOS. You're should check the files before installing to prevent overriding stuff.

## Most useful commands
- `x` - CDs the terminal to window open in finder.
- `z` - CDs to Desktop
- `c` - CDs to Project Root. (Uses .git folder)
- `s` - Opens file or folder in Sublime Text. Opens current directory if no args.

## Finder related
- `mx` - `Touch` a new file in PWD and open it in Sublime
- `mk` - Create a new folder and CD into it
- `op` - Open current terminal directory in Finder
- `show` - Shows hidden files
- `hide` - Hides hidden files

## git shorthand
- `st` - git status
- `cl` - git clone
- `cm` - git add -A && git commit -am
- `sm` - squash and merge
- `ck` - git checkout
- `drop` - Drop all changes since last commit
- `push` - git push

## Downloading stuff
- `ydl` - Shorthand for Youtube-dl
- `adl` - ydl, but download only audio
- `vget` - ydl, but fancier
- `clippy` - Continuosly download links in clipboard
- `slippy` - Clippy, but with aria2c

## Convert files
- `extract` - Extract several types of archives automatically
- `maketar` - Tar archive directory given as argument
- `makezip` - Zip archive directory given as argument
- `zipit` - Compress current dir without the pesky .DS_Store files
- `mkv2mp3` - convert mkv to mp3 with ffmpeg. There are other converters, checkout the funcs.sh file

## Python
- `avenv` - Activates virtualenv environment
- `acon` - Activates Conda environment

## Misc
- `hs` - Search in History.
- `..` - CD to parent directory
- `cleanmac` - Recursively deletes `.DS_Store` files in folder and sub-folders
- `ic` - Sets terminal in 'Incognito mode'. For ZSH only.
- `opza` - Opens myz.sh in sublime text
- `funcs` - Opens funcs.sh file in editor
- `aliases` - Opens aliases.sh file in editor
- `airport -s` - List all available WiFi networks



