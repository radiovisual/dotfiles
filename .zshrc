
echo "Hello from $HOME/.zshrc"

export ZSH=$HOME/.oh-my-zsh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{functions,exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Use an empty theme here because we will load the Pure prompt below
ZSH_THEME=""

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  kubectl
)

source $ZSH/oh-my-zsh.sh

# For Docker Terminal Completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# Overrides the oh-my-zsh theme with the Pure prompt
autoload -U promptinit; promptinit
prompt pure

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Applications/vault vault

# Init the zsh-completions from homebrew
fpath=(/usr/local/share/zsh-completions $fpath)

# Kubernetes completion
source <(kubectl completion zsh)

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PYTHONPATH="${PYTHONPATH}:/usr/local/lib/python2.7/site-packages"

# init z (which was installed via brew)
. /usr/local/etc/profile.d/z.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
# added by travis gem
[ -f /Users/mw/.travis/travis.sh ] && source /Users/mw/.travis/travis.sh

source "$HOME/.sdkman/bin/sdkman-init.sh"

# Activate jabba
[ -s "/Users/mw/.jabba/jabba.sh" ] && source "/Users/mw/.jabba/jabba.sh"