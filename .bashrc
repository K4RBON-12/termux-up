#Custom shell
PS1='\[[38;5;39m\]/\[[38;5;40m\]\W\[[38;5;39m\]/=> \[[0m\]'

#Browse directories without cd
shopt -s autocd

#Custom command (l,ls,la)
alias l='lsd'
alias ls='lsd'
alias la='lsd -a'

#lists files, executables and directories with icons
#alias l='ls -F --color=auto --group-directories-first | awk "{if(\$NF~/\/$/) printf \"📁 %s\n\", \$NF; else if(\$NF~/^.*\*/ || \$1~/^.*x/) printf \"⚙️  %s\n\", \$NF; else printf \"📄 %s\n\", \$NF}

#(delete) files and allowing their restoration ( .garbage)
alias del='mv -f --target-directory=$HOME/.garbage'

#Backup files/dir in the termux.backup folder
alias bkp='cp -r -v --backup=t --suffix=.bkp --target-directory=/data/data/com.termux/files/home/storage/downloads/termux_backup/'

#Prevents use of the (rm) command
alias rm='confirm && rm'

# exit & clear
alias q="exit"
alias c="clear"

#Function to prevent the use of command (rm)
confirm() {
    echo "Sure you want to proceed? (y/n)"
    read -r response
    case "$response" in
        [yY][eE][sS]|[yY])
            true
            ;;
        *)
            false
            ;;
    esac
}

#New functions here!
