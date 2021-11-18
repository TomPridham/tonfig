/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

xcode-select --install

echo "xclip node jq bash bash-completion watch wget gzip gawk gnutls wdiff binutils diffutils gnu-sed ripgrep vim tmux gnupg pinentry-mac" | xargs brew install
brew tap homebrew/cask-fonts
echo "alacritty rectangle font-jetbrains-mono" | xargs brew install --cask

brew link --overwrite gnupg
mkdir ~/.gnupg
touch ~/.gnupg/gpg-agent.conf
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
git config --global gpg.program gpg

chsh -s /bin/bash

./setup.sh
