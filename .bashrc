#!/bin/bash

######################################################################
#
#     _|_|_|      _|_|      _|_|_|  _|    _|  _|_|_|      _|_|_|  
#     _|    _|  _|    _|  _|        _|    _|  _|    _|  _|        
#     _|_|_|    _|_|_|_|    _|_|    _|_|_|_|  _|_|_|    _|        
#     _|    _|  _|    _|        _|  _|    _|  _|    _|  _|        
# _|  _|_|_|    _|    _|  _|_|_|    _|    _|  _|    _|    _|_|_|
#
######################################################################

#######################################################
# .BASHRC FILE MADE BY knowhere-coding
#######################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#######################################################
# ENVIRONMENT VARIABLES
#######################################################
unset LS_COLORS

export LS_COLORS="\
no=38;5;255:\
di=38;5;198:\
ow=38;5;198:\
tw=38;5;198:\
fi=38;5;255:\
ex=:\
pi=38;5;208:\
ln=38;5;51:\
so=38;5;196:\
mi=38;5;196:\
sg=38;5;129:\
st=48;5;198:\
su=48;5;129:\
*.7z=38;5;214:\
*.apk=38;5;40:\
*.avi=38;5;147:\
*.awk=38;5;255:\
*.bat=38;5;34:\
*.bf=38;5;236:\
*.bmp=38;5;250:\
*.c=38;5;26:\
*.cmd=38;5;34:\
*.cpp=38;5;27:\
*.css=38;5;33:\
*.csv=38;5;2:\
*.doc=38;5;39:\
*.docx=38;5;39:\
*.exe=38;5;196:\
*.flv=38;5;255:\
*.gif=38;5;190:\
*.go=38;5;39:\
*.gz=38;5;214:\
*.h=38;5;26:\
*.hpp=38;5;27:\
*.htm=38;5;166:\
*.html=38;5;166:\
*.ico=38;5;190:\
*.ini=38;5;244:\
*.java=38;5;9:\
*.jl=38;5;43:\
*.jpg=38;5;190:\
*.jpeg=38;5;190:\
*.js=38;5;220:\
*.json=38;5;220:\
*.lua=38;5;20:\
*.md=38;5;159:\
*.mkv=38;5;147:\
*.mov=38;5;147:\
*.mp3=38;5;147:\
*.mp4=38;5;147:\
*.mpeg=38;5;147:\
*.ogg=38;5;147:\
*.pdf=38;5;160:\
*.php=38;5;57:\
*.pl=38;5;55:\
*.png=38;5;190:\
*.ppt=38;5;202:\
*.pptx=38;5;202:\
*.ps1=38;5;34:\
*.psm=38;5;34:\
*.psm1=38;5;34:\
*.py=38;5;32:\
*.qoi=38;5;190:\
*.r=38;5;32:\
*.rar=38;5;214:\
*.rb=38;5;124:\
*.rs=38;5;202:\
*.rtf=38;5;159:\
*.sh=38;5;34:\
*.sql=38;5;63:\
*.svg=38;5;190:\
*.swift=38;5;208:\
*.tar=38;5;214:\
*.tgz=38;5;214:\
*.toml=38;5;248:\
*.ts=38;5;27:\
*.tsv=38;5;2:\
*.txt=38;5;159:\
*.vbs=38;5;2:\
*.vb=38;5;2:\
*.vue=38;5;35:\
*.wav=38;5;147:\
*.wmv=38;5;147:\
*.xml=38;5;248:\
*.xlsx=38;5;2:\
*.yaml=38;5;248:\
*.zip=38;5;214:\
"

#######################################################
# SETUP
#######################################################

# colors
NONE="\[$(tput sgr0)\]"
BLUE="\[$(tput setaf 39)\]"
GREEN="\[$(tput setaf 40)\]"
LIGHT_BLUE="\[$(tput setaf 51)\]"
PURPLE="\[$(tput setaf 129)\]"
ERROR="\[$(tput setaf 196)\]"
PINK="\[$(tput setaf 198)\]"
ORANGE="\[$(tput setaf 208)\]"
GREY="\[$(tput setaf 242)\]"

COUNTER=-1

# ignore case on auto-completion
bind "set completion-ignore-case on"

# show auto-completion list automatically, without double tab
bind "set show-all-if-ambiguous On"

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000       # cached lines
HISTFILESIZE=2000   # saved lines

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# make less more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

PROMPT_COMMAND="createPrompt"

#######################################################
# ALIASES
#######################################################
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi

# modified default commands ----------------------------------------------------------------
alias cp='cp -i'                                            # copy interactive
alias mv='mv -i'                                            # move interactive
alias mkdir='mkdir -p'                                      # mkdir and necessary parent directories
alias ping='ping -c 10'                                     # ping with limit 10
alias tree='tree -C'                                        # tree with colors enabled

# change directory aliases -----------------------------------------------------------------
alias ..='cd ..'                                            # cd up 1
alias ...='cd ../..'                                        # cd up 2
alias ....='cd ../../..'                                    # cd up 3
alias .....='cd ../../../..'                                # cd up 4
alias bd='cd "$OLDPWD"'                                     # cd to previous directory

# useful ls aliases ------------------------------------------------------------------------
alias ls='ls --color=auto'                                  # ls with colors enabled

alias ll='ls -alhF'                                         # long format, showing hidden files and directories with indicators
alias la='ls -Al'                                           # list all files and directories (including hidden) except . and ..

alias lt='ls -lt'                                           # sort by modification time, newest first
alias ltr='ls -ltr'                                         # sort by modification time, oldest first

alias lB='ls -lS'                                           # sort by file size, largest first
alias lb='ls -lS --reverse'                                 # sort by file size, smallest first

alias lh='ls -lh'                                           # long format with human-readable file sizes

alias lsf='ls -p | grep -v / --color=none'                  # show only files (excluding directories)
alias lsd='ls -p | grep / --color=none'                     # show only directories (excluding files)
alias lsfc='echo "$(ls -p | grep -v / | wc -l) files"'      # show the number of files
alias lsdc='echo "$(ls -p | grep / | wc -l) directories"'   # show the number of directories

alias lfx='find . -maxdepth 1 -type f -exec ls -lh {} + | grep "./\w" --color=none | sed -E "s#\./##"; lsd' # long format for files short for directories
alias ldx='ll -d */; lsf'                                                                                   # long format for directories short for files   

alias ltla='ls -Alth'                                       # list all files sorted by their last modification time, including hidden files
alias lsl='du -hsx * | sort -rh | head -10'                 # list the top 10 largest files or directories in the current directory

# other ------------------------------------------------------------------------------------
alias wttr='curl "wttr.in"'                                 # weather info
alias ch='history -c && history -w && exit'                 # clear history and exit
alias sai='sudo apt install'                                # install package
alias ip='curl -s ifconfig.me'                              # show public ip address

#######################################################
# FUNCTIONS
#######################################################

# make directory and go there
function mkdg
{
    mkdir $1
    cd $1
}

# move a certain number of directories up
function up
{
  if [ $# -eq 0 ]; then
    echo "Error: Please provide the number of directories to move up."
    return 1
  fi

  re='^[0-9]+$'
  if ! [[ $1 =~ $re ]]; then
    echo "Error: The parameter should be a positive integer."
    return 1
  fi

  num_up=$1
  current_dir=$(pwd)

  if [ "$current_dir" = "/" ]; then
    echo "Error: Already at the root directory. Cannot move further up."
    return 1
  fi

  while [ $num_up -gt 0 ]; do
    current_dir=$(dirname "$current_dir")
    num_up=$((num_up - 1))
  done

  if [ ! -d "$current_dir" ]; then
    echo "Error: The resulting directory does not exist."
    return 1
  fi

  cd "$current_dir" || return 1
}

# remove files with summary output
function rms() 
{
    local count=0
    for arg in "$@"; do
        if [ -e "$arg" ]; then
            /bin/rm -rf "$arg"
            if [ $? -eq 0 ]; then
                ((count++))
            fi
        fi
    done

    echo "$count files deleted!"
}

# remove files with summary output savely
function rmss
{
    local deleted_files=()

    for arg in "$@"; do
        if [ -e "$arg" ]; then
            deleted_files+=("$arg")
        fi
    done

    local count=${#deleted_files[@]}

    if [ $count -eq 0 ]; then
        echo "No files to delete."
        return
    fi

    echo "Files to be deleted ($count files):"
    printf '%s\n' "${deleted_files[@]}"
    echo "---"
    echo "$count files"

    read -p "Do you want to proceed with the deletion (Y/n)? " choice
    case "$choice" in
        [Yy]* )
            for file in "${deleted_files[@]}"; do
                /bin/rm -f "$file"
            done
            echo "Deleted $count files."
            ;;
        [Nn]* )
            echo "Deletion canceled. Files were not deleted."
            ;;
        * )
            echo "Invalid input. Deletion canceled. Files were not deleted."
            ;;
    esac
}

# search in all files
function search
{
    grep -iIHrn "$1" . | less -r
}

# rot13 cipher
function rot13 () 
{
	if [ $# -eq 0 ]; then
		echo "Error: Please provide an input string."
    else
		echo $* | tr '[a-m][n-z][A-M][N-Z]' '[n-z][a-m][N-Z][A-M]'
	fi
}

# rotX cipher
function rot {
    if [[ $# -ne 2 ]]; then
        echo "Error: Please provide two arguments - rotation value and input string."
        return 1
    fi

    local rotation_value="$1"
    local input_string="$2"

    if ! [[ "$rotation_value" =~ ^[+-]?[0-9]+$ ]]; then
        echo "Error: Rotation value must be an integer."
        return 1
    fi

    if [[ "$rotation_value" -ge 26 || "$rotation_value" -le -26 ]]; then
        echo "Error: Rotation value must be between -25 and 25 (exclusive)."
        return 1
    fi

    local output_string=""

    for ((i = 0; i < ${#input_string}; i++)); do
        char="${input_string:i:1}"
        if [[ "$char" =~ [A-Za-z] ]]; then
            ascii_val=$(printf "%d" "'$char")
            if [[ "$char" =~ [A-Z] ]]; then
                base=65
            else
                base=97
            fi
            rotated_ascii_val=$(((ascii_val - base + rotation_value + 26) % 26 + base))
            output_string+=$(printf \\$(printf "%o" "$rotated_ascii_val"))
        else
            output_string+="$char"
        fi
    done

    echo "$output_string"
}

# call .bashrc file for activation
function ub
{
    . ~/.bashrc
}

# bash prompt setup
function createPrompt 
{
    LAST_COMMAND=$? # save the exit code of the last command
    GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD 2> /dev/null) # git branch name if existing

    # PROMPT ELEMENTS
    PROMPT_BEFORE="\n"
    PROMPT_COUNTER="$GREY[\#]$NONE"
    #PROMPT_COUNTER="$GREY[$COUNTER]$NONE"
    PROMPT_USER="$GREY[$BLUE\u$NONE$GREY@$NONE"
    PROMPT_HOSTNAME="$GREEN\h$NONE"
    PROMPT_GIT_BRANCH=""
    PROMPT_SPACER="$GREY>$NONE"
    PROMPT_PATH_PARENT=""
    PROMPT_PATH="$PINK\W$GREY]$NONE"
    PROMPT_STRING="$NONE\$$NONE"

    # change the color to red when the last command throwed an error
    if [[ $LAST_COMMAND -eq 0 ]]; then
        #PROMPT_BEFORE="\n"
        #COUNTER=$((COUNTER+1))
        #PROMPT_COUNTER="$GREY[$COUNTER]$NONE"
        PROMPT_STRING="$NONE\$$NONE"
    else
        #PROMPT_BEFORE="$ERROR ↬  Counter resetted! \n$NONE"
        #COUNTER=0
        #PROMPT_COUNTER="$GREY[$ERROR$COUNTER$GREY]$NONE"
        PROMPT_STRING="$ERROR\$$NONE"
    fi

    # show git branch name if existing
    if [[ -n $GIT_BRANCH ]] ; then
        PROMPT_GIT_BRANCH="$GREY($PURPLE$GIT_BRANCH$GREY)$NONE"
    fi

    # show parent directory if not in ~ (HOME) or / (ROOT)
    if [[ "$PWD" = "$HOME" || "$PWD" == "/" ]]; then
        PROMPT_PATH_PARENT=""
    else
        PARENT_PATH=$(dirname $PWD | sed "s#.*/##")
        PROMPT_PATH_PARENT="$GREY$PARENT_PATH/$NONE"
    fi

    PS1="$PROMPT_BEFORE$PROMPT_COUNTER$PROMPT_USER$PROMPT_HOSTNAME $PROMPT_GIT_BRANCH $PROMPT_SPACER $PROMPT_PATH_PARENT$PROMPT_PATH $PROMPT_STRING "
}

# print system summary
function sys()
{
    G="$(tput setaf 242)"
    N="$(tput sgr0)"

    clear

    printf "\n"
    printf "   %s\n" "${G}ADDRESS: $N$(curl -s ifconfig.me)"
    printf "   %s\n" "${G}USER: $N$(echo $USER)"
    printf "   %s\n" "${G}DATE: $N$(date)"
    printf "   %s\n" "${G}UPTIME: $N$(uptime -p)"
    printf "   %s\n" "${G}HOSTNAME: $N$(hostname)"
    printf "   %s\n" "${G}KERNEL: $N$(uname -rms)"
    printf "   %s\n" "${G}PACKAGES: $N$(dpkg --get-selections | wc -l)"
    printf "   %s\n" "${G}MEMORY: $N$(free -g -h | awk '/Mem/{print $3"/"$2}')"
}

sys
