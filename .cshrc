# Setup tcsh environment
#
# Quality of life (more like zsh or bash on Mac)
set history = 5000              # Set longer history
set savehist = (5000 merge)     # Merge across terminal instances
set histfile = ~/.tcsh_history
set histdup = erase             # Remove duplicates in history
set histlit
set histverify                  # Make history expansion safer
set autolist                    # Show possible completions automatically
set correct=cmd                 # autocorrect mistyped commands
set correctall
set autocorrect                 # Show corrections
set complete = enhance
set matchbeep = nomatch
set fignore = (.o .pyc .class .tmp)
set autocd                      # Autocd (cd into directory just by typing name)
set dunique                     # Avoids duplicate entries in stack
set autopushd                   # Every 'cd' acts like 'pushd'
setenv PAGER less               # Pager for long outputs
#
# Set backwards suggestions
bindkey -e
bindkey "\e[A" up-history
bindkey "\e[B" down-history
bindkey "\e[C" forward-char
bindkey "\e[D" backward-char
bindkey -k up history-search-backward
bindkey -k down history-search-forward
#
# Set prompt
set color # Enable color output if supported
#
# Color variables
set red="%{\033[0;31m%}"
set green="%{\033[0;32m%}"
set yellow="%{\033[0;33m%}"
set blue="%{\033[0;34m%}"
set magenta="%{\033[0;35m%}"
set cyan="%{\033[0;36m%}"
set reset="%{\033[0m%}"
#
# Set a modern, dynamic prompt
# set prompt="%B${green}%n${reset}@${blue}%m${reset}:${yellow}%~${reset}%# "
#
# Shorten long paths: if deeper than 3 levels, abbreviate middle parts
alias short_pwd 'echo $cwd | awk -F/ '\''{if (NF <= 3) { print $0; next } print $(NF-2) "/" $(NF-1) "/" $NF}'\'''
# Build prompt
alias precmd 'set shortdir = `short_pwd`; set prompt = "${red}%n${reset}@${green}%m${reset}:${cyan}[$shortdir]${reset} %# "'
#
# local aliases
if (-f $HOME/.alias) then
    source $HOME/.alias
endif
#
# load additional modules
# module purge
# module switch PrgEnv-cray PrgEnv-intel
module load --silent PrgEnv-intel
module load --silent tecplot
module load --silent cfd++
module load --silent pointwise
module list
#
# add directories to path
if (-d ~/lib) then
    mkdir -p ~/lib
endif
if (-d ~/bin) then    
    mkdir -p ~/bin
endif 
set path = ( $HOME/bin $path)
set path = ( $HOME/lib $path)
#
setenv LD_LIBRARY_PATH $HOME/lib:$LD_LIBRARY_PATH
#
# link appropriate toolbox executable
ln -sf $HOME/cub/toolbox/bin/toolbox.linux.intel $HOME/bin/toolbox
ln -sf $HOME/cub/lib/libvfft.so.narwhal $HOME/lib/libvfft.so
#
rehash
unlimit
