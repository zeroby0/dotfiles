#
# Install Command Line Tools and
# Home brew
#

function installCLT() {
  xcode-select --install

  if [ $? -eq 0 ]; then
    echo "Installation of Command Line Tools complete"
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    echo "Failed installing Command Line Tools."
    echo "Install manually from Apple Developer website"
  fi
}

function installBrew() {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
  test -d "${xpath}" && test -x "${xpath}" ; then
  # If CLT already installed
  installBrew
else
  installCLT
fi