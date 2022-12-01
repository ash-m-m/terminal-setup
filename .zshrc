# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
current_path=$(pwd)
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions sudo web-search copybuffer copypath copyfile dirhistory history)


FILE=~/Code/terminal-setup
if [ -d "$FILE" ]; then
    cd ~/Code/terminal-setup
    git pull
    echo "terminal-setup updated."
else
    git clone https://github.com/ash-m-m/terminal-setup 
    cd ~/Code/terminal-setup
fi
cp .zshrc ~/
echo ".zshrc updated"
cd ~/
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

neofetch

# Aliases
alias tf=terraform
alias tg=terragrunt
alias src="exec zsh"
alias c=clear
alias awssts="aws sts get-caller-identity"
alias weather="google weather 07065"

# Aliases for K8s
alias k=kubectl --short
alias kgp="kubectl get pods -o wide"
alias kgd="kubectl get deployments -o wide"

# Versions
kubectl version --client
terraform version
terragrunt --version
aws --version 
k9s version --short

# Updates
# brew update --auto-update
# brew upgrade 

clear

# Tips for zsh plugins
echo " \nTips for zsh plugins"
echo " \nsudo plugin - escape key twice to automatically insert sudo before failed command."
echo " \n{search engine} {search prompt} ex: google local weather."
echo " \nCopypath plugin to copy the path to your current directory to the clipboard."
echo " \ncopyfile to copy the contents of a file. Ex: copyfile helloworld.py"
echo " \nCopybuffer - Ctrl + o to copy the currently typed command line."
echo " \ndirhistory - ALT + Left/Right/Up/Down to navigate directory."
echo " \n'src' to source zsh.\n"

cat << EOF
h - prints your history.
hs [searchterm] - searches your history with grep.
hsi [serachterm] - same as above but case insensitive.
EOF
echo " \npp_json - Format json by pipping it into pp_json."
echo " \nfuzzy search: find {name} -type f | fzf > selected."
echo " \nkubectx for k8 context and ns switching. Use kubectx or kubens."
echo " \nStern allows you to tail multiple pods on Kubernetes and multiple containers within the pod: stern pod-query [flags]."
echo " \nSilver Searcher (better than ack). To use: ag {serach}."

echo " \nTo start docker (without docker engine), run 'colima start'"

cd $current_path