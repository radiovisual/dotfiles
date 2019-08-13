#!/usr/bin/env bash

check="\n\033[36m✔\033[0m"

notify() {
    echo -e "\n"
    printf "\033[36m%s\033[0m\n" "$1"
}

# Ask for the sudo password up front 
# (only to be used by the commands that need it)
sudo -v

# ---------------------------------------------------------
notify "Install XCode Command Line Tools"
xcode-select --install

# ---------------------------------------------------------
# https://brew.sh/
notify "Install Brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# ---------------------------------------------------------
notify "Install moreutils"
# Install some other useful utilities like `sponge`.
brew install moreutils

# ---------------------------------------------------------
notify "Install findutils"
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# ---------------------------------------------------------
notify "Install gnu-sed"
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# ---------------------------------------------------------
notify "Install bash"
# Install Bash 4.
brew install bash

# ---------------------------------------------------------
notify "Install Vim"
brew install vim

# ---------------------------------------------------------
# https://github.com/robbyrussell/oh-my-zsh
notify "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ---------------------------------------------------------
# https://nodejs.org/
notify "Install Node"
brew install node

# ---------------------------------------------------------
notify "Install tree"
brew install tree

# ---------------------------------------------------------
# https://github.com/sindresorhus/pure
notify "Install Pure Prompt"
npm install --global pure-prompt

# ---------------------------------------------------------
# https://www.npmjs.com/package/gulp
notify "Install Gulp"
npm install --global gulp

# ---------------------------------------------------------
# https://docs.docker.com/docker-for-mac/
notify "Install Docker"
brew cask install docker

# ---------------------------------------------------------
# https://yarnpkg.com/lang/en/docs/install/#mac-stable
notify "Install Yarn"
brew install yarn

# ---------------------------------------------------------
# https://github.com/tj/n
notify "Install n"
npm install -g n

sudo n 8.16.0
sudo n 10.16.0
sudo n latest

# ---------------------------------------------------------
# https://www.npmjs.com/package/local-csp-reporter
notify "Install local-csp-reporter"
npm install -g local-csp-reporter

# ---------------------------------------------------------
# https://kubernetes.io/docs/tasks/tools/install-kubectl/
notify "Install Kubernetes"
brew install kubernetes-cli

# ---------------------------------------------------------
# https://github.com/turkenh/KubeContext
notify "Install KubeContext"
brew cask install kubecontext

# ---------------------------------------------------------
# https://www.spotify.com/
notify "Install Spotify"
brew cask install spotify

# ---------------------------------------------------------
notify "Install VLC"
brew cask install vlc

# ---------------------------------------------------------
# https://ytdl-org.github.io/youtube-dl/index.html
notify "Install youtube-dl"
brew install youtube-dl

# ---------------------------------------------------------
# https://1password.com/downloads/mac/
notify "Install 1Password"
brew cask install 1password

# ---------------------------------------------------------
# https://support.1password.com/command-line/
notify "Install 1Password CLI"
brew cask install 1password-cli

# ---------------------------------------------------------
# https://gpgtools.org/
notify "Install GPG Suite"
brew cask install gpg-suite

# ---------------------------------------------------------
# https://www.alfredapp.com/
notify "Install Alfred"
brew cask install alfred

# ---------------------------------------------------------
notify "Install git"
brew install git

# ---------------------------------------------------------
notify "Install Opera"
brew cask install opera

# ---------------------------------------------------------
# https://www.google.com/chrome/
notify "Install Chrome"
brew cask install google-chrome

# ---------------------------------------------------------
# https://www.mozilla.org/en-US/firefox/new/
notify "Install Firefox"
brew cask install firefox

# ---------------------------------------------------------
# https://golang.org/dl/
notify "Install Go"
brew install go
mkdir $HOME/go

# ---------------------------------------------------------
# https://salsa.debian.org/debian/bash-completion
notify "Install bash-completion2"
brew install bash-completion2

# ---------------------------------------------------------
# https://github.com/zsh-users/zsh-syntax-highlighting
notify "Install zsh-syntax-highlighting"
brew install zsh-syntax-highlighting

# ---------------------------------------------------------
# https://github.com/superbrothers/zsh-kubectl-prompt
notify "Install zsh-kubectl-prompt"
git clone git@github.com:superbrothers/zsh-kubectl-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-kubectl-prompt

# ---------------------------------------------------------
# https://tunnelblick.net/downloads.html
notify "Install Tunnelblick"
brew cask install tunnelblick

# ---------------------------------------------------------
# https://yeoman.io/learning/index.html
notify "Install Yeoman"
npm install --global yo

# ---------------------------------------------------------
# npm install --global yo generator-nm
notify "Install generator-nm"
npm install --global generator-nm

# ---------------------------------------------------------
# https://www.npmjs.com/package/generator-nmx
notify "Install generator-nmx"
npm install --global generator-nmx

# ---------------------------------------------------------
# https://github.com/rupa/z
notify "Install z"
brew install z

# ---------------------------------------------------------
notify "Install serverless"
npm install --global serverless

# ---------------------------------------------------------
# https://github.com/sharkdp/bat
notify "Install bat"
brew install bat

# ---------------------------------------------------------
# https://code.visualstudio.com/
notify "Install VS Code"
brew cask install visual-studio-code

# ---------------------------------------------------------
# https://slack.com/intl/en-ch/downloads/mac
notify "Install Slack"
brew cask install slack

# ---------------------------------------------------------
# https://www.goabstract.com/
notify "Install Abstract"
brew cask install abstract

# ---------------------------------------------------------
# https://studio3t.com/
notify "Install Studio 3T"
brew cask install studio-3t

# ---------------------------------------------------------
# https://www.openoffice.org/
notify "Install Open Office"
brew cask install openoffice

# ---------------------------------------------------------
# https://keybase.io/
notify "Install Keybase"
brew cask install keybase

# ---------------------------------------------------------
# https://www.sketchapp.com/
notify "Install Sketch"
brew cask install sketch

# ---------------------------------------------------------
# http://recordit.co/
notify "Install RecordIt"
brew cask install recordit

# ---------------------------------------------------------
# https://www.getpostman.com/
notify "Install Postman"
brew cask install postman

# ---------------------------------------------------------
# https://cyberduck.io/
notify "Install Cyberduck"
brew cask install cyberduck

# ---------------------------------------------------------
# https://www.mozilla.org/thunderbird/
notify "Install Thunderbird"
brew cask install thunderbird

# ---------------------------------------------------------
# https://vaultproject.io/
notify "Install Vault"
brew install vault

# ---------------------------------------------------------
# https://github.com/kevva/wifi-password-cli
notify "Install wifi-password-cli"
npm install --global wifi-password-cli

# ---------------------------------------------------------
notify "Install ruby"
brew install ruby

# ---------------------------------------------------------
# https://github.com/travis-ci/travis.rb
notify "Install travis"
gem install travis -v 1.8.10 --no-rdoc --no-ri

# ---------------------------------------------------------
# https://sdkman.io/install
notfiy "Install SDKMAN!"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# ---------------------------------------------------------
# https://gradle.org/install/#older-releases
notfiy "Install gradle (2.14.1)"
sdk install gradle 2.14.1

# ---------------------------------------------------------
# https://github.com/FiloSottile/mkcert
notfiy "Install mkcert"
brew install mkcert

# ---------------------------------------------------------
# https://github.com/paulirish/git-open
notify "Install git-open"
npm install --global git-open

# ---------------------------------------------------------
notify "Install watch"
brew install watch

# ---------------------------------------------------------
# ---------------------------------------------------------
# POST-INSTALL ROUTINE
# ---------------------------------------------------------
# ---------------------------------------------------------

# Now let's open some browser windows to install pages for apps or extensions 
# that either can't be automated, or aren't automated yet
echo -e "${check} Install Import Cost VSCode Plugin (window opened)"
open -e https://github.com/wix/import-cost

echo -e "${check} Install Live Share VSCode Plugin (window opened)"
open -e https://github.com/MicrosoftDocs/live-share

echo -e "${check} Install Monokai Pro Share VSCode Theme (window opened)"
open -e https://www.monokai.pro/vscode/

echo -e "${check} Install Prettier VSCode Plugin (window opened)"
open -e https://github.com/prettier/prettier-vscode

echo -e "${check} Verify 1Password CLI Integrity (window opened)"
open -e https://support.1password.com/command-line-getting-started/

echo -e "${check} Add the Snazzy Theme for terminal (Double-click on ~/Downloads/Snazzy.terminal)"
curl https://raw.githubusercontent.com/sindresorhus/terminal-snazzy/master/Snazzy.terminal > ~/Downloads/Snazzy.terminal

echo -e "${check} Install Git Lens VSCode Plugin (window opened)"
open -e https://gitlens.amod.io/

echo -e "${check} Authenticate with GitHub (window opened)"
open -e https://help.github.com/en/articles/caching-your-github-password-in-git

echo -e "${check} Install Java (window opened)"
open -e https://www.java.com/en/download/mac_download.jsp

echo -e "${check} Import sensitive dotfiles from 1Password"

echo -e "${check} Import ~/.kube/config into KubeContext"

echo -e "${check} Created a ~/gitprojects directory"
mkdir ~/gitprojects

# Add some notes about VSCode updates that should happen on a new installation of VSCode
echo -e "${check} Added the following to /Users/mw/Library/Application\ Support/Code/User/settings.json\n"
cp config/vscode-settings.json $HOME/Library/Application\ Support/Code/User/settings.json 
cat config/vscode-settings.json

# Cleanup old artifacts, modules, etc
brew cleanup













