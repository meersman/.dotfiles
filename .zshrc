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
DISABLE_LS_COLORS="false"
#
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
export LS_COLORS="di=01;34:ow=01;36:tw=01;33:ln=01;35:ex=01;32:fi=0"#
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
# Source local .alias file if one exists
if [ -f "$HOME/.alias" ]; then
    source "$HOME/.alias"
fi
#
# Define path
# PATH=/bin:/usr/local/bin:/usr/bin:${PATH}
# export PATH=$HOME/bin:${PATH}
# Build PATH from scratch each time - no duplicates possible
typeset -U path  # -U flag removes duplicates automatically
path=(
    $HOME/bin
    /opt/homebrew/bin
    /usr/local/bin
    /bin
    /usr/bin
    /usr/sbin
    /sbin
)
export PATH
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
#
if [ -d $LIBRARY_PATH ]; then
    export LIBRARY_PATH="/usr/local/lib"
fi
#
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
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
# export PATH="$PATH:/Users/jmeersman/.local/bin"
#
#==========================================================================
# Modules setup
#==========================================================================
# Initialize modules (Apple Silicon path)
if [ -f $(brew --prefix modules)/init/zsh ]; then
    source $(brew --prefix modules)/init/zsh
fi
# Set module path
export MODULEPATH="/opt/homebrew/modulefiles:$MODULEPATH"
#
echo PATH4 $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jmeersman/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jmeersman/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jmeersman/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jmeersman/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

