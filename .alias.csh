# Directory nav
alias work 'cd $WORKDIR'
alias center 'cd $CENTER'
alias l 'ls -altr'
alias ls 'ls -C --color=auto -h'
alias ll 'ls -lh'
alias la 'ls -lah'
alias lcheck 'ls -l && du -sh && ls -l | wc -l'
alias b 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'

# Modules
alias ml 'module list'
alias ma 'module avail'
alias ms 'module show'

# Slurm/PBS
alias qs 'qstat -u $USER'
alias qq 'qstat -q'
alias sq 'show_queues'
alias qinfo 'qstat -fx \!* | less'
alias qdelall 'qselect -u $USER | xargs qdel'
alias qrun 'qstat -u $USER | grep R'
alias qwait 'qstat -u $USER | grep Q'
alias qwatch 'watch -n 5 "qstat -u $USER"'
alias qalter_all 'qselect -u $USER | xargs qalter'

# Misc
alias edit 'emacs -nw'
alias editw  'edit `which \!:1`'
alias gss 'git status -s'
alias csrc 'source ~/.cshrc'
alias reload 'source ~/.cshrc'
alias epath 'echo $PATH | tr ":" "\n"'
alias now 'date +"%Y-%m-%d %H:%M:%S"'
alias h 'history 25'
alias j 'jobs -l'
alias df 'df -h'
alias du 'du -h'
alias rm 'rm -i'
alias cp 'cp -i -p'
alias mv 'mv -i'
alias bak 'cp \!:1 \!:1.bak'
alias checksize 'du -sh && ls -l | wc -l'
alias resetts 'touch * | touch **/* | touch **/**/* | touch **/**/**/* | touch **/**/**/**/* | touch **/**/**/**/**/* | touch **/**/**/**/**/**/* | touch **/**/**/**/**/**/**/*'
alias touchall 'find . -type f -exec touch {} +'

########################## DoD HPC Machines ##########################
# login command to get kerberos ticket for DoD login
alias dod 'kinit "$dod_user"@HPCMP.HPC.MIL'
alias dodlogin 'kinit "$dod_user"@HPCMP.HPC.MIL'
#
# warhawk
alias warhawk 'ssh -Y "$dod_user"@warhawk.afrl.hpc.mil'
alias sftpwarhawk 'sftp "$dod_user"@warhawk.afrl.hpc.mil'
#
# raider
alias raider 'ssh -Y "$dod_user"@raider.afrl.hpc.mil'
alias sftpraider 'sftp "$dod_user"@raider.afrl.hpc.mil'
#
# narwhal
alias narwhal 'ssh -Y "$dod_user"@narwhal.navydsrc.hpc.mil'
alias sftpnarwhal 'sftp "$dod_user"@narwhal.navydsrc.hpc.mil'
#
# nautilus
alias nautilus 'ssh -Y "$dod_user"@nautilus.navydsrc.hpc.mil'
alias sftpnautilus 'sftp "$dod_user"@nautilus.navydsrc.hpc.mil'
#
# carpenter
alias carpenter 'ssh -Y "$dod_user"@carpenter.erdc.hpc.mil'
alias sftpcarpenter 'sftp "$dod_user"@carpenter.erdc.hpc.mil'
