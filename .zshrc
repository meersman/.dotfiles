# Path to your oh-my-zsh installation.
export ZSH="/Users/jmeersman/.oh-my-zsh"
#==================================================================================
# oh-my-zsh configuration settings
#==================================================================================
# Choose from themes (copy and past into ZSH_THEME=""):
# robbyrussell af-magic agnoster bureau funky gallois norm pygmalion simple sunrise ys
ZSH_THEME="gallois"
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
DISABLE_LS_COLORS="false"
#
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
#
# Load plogins (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
  extract
  python
  vscode
)
#
source $ZSH/oh-my-zsh.sh
#
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='emacs'
else
  export EDITOR='emacs'
fi
#
# Set command line prompt path to top_dir/.../dir1/dir2
# PROMPT='%{$fg[cyan]%}[%(4~|%-1~/.../%2~|%3~)% ]%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
#
export LS_COLORS="di=01;34:ow=01;36:tw=01;33:ln=01;35:ex=01;32:fi=0"
#
export PROMPT='%F{red}%n%f@%F{green}%m%f:%F{cyan}[%(4~|%-1~/.../%2~|%3~)% ]%f %# '
#
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#
#==========================================================================
# USER DEFINED ALIASES
#==========================================================================
#
# set dod user name
dod_user=meersman
ua_net_id=jmeersman
#
########################alias tecplot='/usr/local/tecplot360ex/bin/tec360 -mesa'
# Source local .alias file if one exists
if [ -f "$HOME/.alias" ]; then
    source "$HOME/.alias"
fi
#
# Define path
PATH=/bin:/usr/local/bin:/usr/bin:${PATH}
export PATH=$HOME/bin:${PATH}
export PATH=/usr/local/tecplot360ex/bin:${PATH}
#
# Set DYLD library path (fix for gcc libraries on mac)
if [[ -z "$DYLD_LIBRARY_PATH" ]]; then
    export DYLD_LIBRARY_PATH=~/lib/:$DYLD_LIBRARY_PATH
fi
#
# Check if Library Path is already defined
if [ -d $LD_LIBRARY_PATH ]; then
    export LD_LIBRARY_PATH="/usr/local/lib"
elif ((${#LD_LIBRARY_PATH[@]})); then
    export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/local/lib"
else
    LD_LIBRARY_PATH=/usr/local/lib64
fi
#
# add directories to library path
export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/lib:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/lib64:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=$HOME/local/install/lib:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/opt/tecplot/bin:$LD_LIBRARY_PATH
if [ -d $LIBRARY_PATH ]; then
    export LIBRARY_PATH="/usr/local/lib"
fi
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#
# Anaconda settings
#
export PATH=~/opt/anaconda3/bin:${PATH}
export PATH=~/opt/anaconda3/condabin:${PATH}
#
#KERBEROS
export KRB5_CONFIG=/usr/local/krb5/etc/krb5.conf
export PATH="/usr/local/krb5/bin:${PATH}"
export PATH="/usr/local/ossh/bin:${PATH}"
#
# switch to gcc-9
export OMPI_CXX=g++-9
export OMPI_CC=gcc-9
export OMPI_FC=gfortran-9
#
# Created by `pipx` on 2025-08-08 22:30:49
export PATH="$PATH:/Users/jmeersman/.local/bin"
#
# Modules setup
# Initialize modules (Apple Silicon path)
if [ -f $(brew --prefix modules)/init/zsh ]; then
    source $(brew --prefix modules)/init/zsh
fi
#
# Set module path
export MODULEPATH="/opt/homebrew/modulefiles:$MODULEPATH"
