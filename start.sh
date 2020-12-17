#! sh
echo "WELLCOME TO NEW MAC"
echo "START INSTALLING..."

if ! type brew &>/dev/null ; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! type zsh &>/dev/null ; then
  brew install zsh
fi

if [[ $SHELL != *"zsh"* ]] ; then
  chsh -s /bin/zsh
fi

if ! type xcode-select &>/dev/null ; then
  xcode-select --install
fi

if ! type git &>/dev/null ; then
  brew install git
fi

if ! type ansible &>/dev/null ; then
  brew install ansible && brew link ansible
fi
