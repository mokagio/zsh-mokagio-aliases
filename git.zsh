#
# Git aliases 
#

alias g='git'
alias gb='git branch'
alias gs='nocorrect git status'
alias ga='nocorrect git add'
alias gaa='nocorrect git add --all'
alias gc='nocorrect git commit'
alias gcm='nocorrect git commit -m'
alias gp='nocorrect git push'
alias gl='nocorrect git pull'
alias gch='git checkout'
alias gd='git diff'
alias glg='git log'

# Stay safe when git commit -a
safe_command() {
	message=$1
	shift 1
	echo $message; echo "\e[0;33;49mAre you sure? (y/n)\e[0m"; read ANSWER; if [ $ANSWER = y ]; then $*; fi;
}
message='\e[0;33;49mYou are about to perform a git commit all.\e[0m'
# no correct doesn't work here... why?
gca_cmd='git commit -a'
gcam_cmd='git commit -a -m'
alias gca="safe_command '$message' $gca_cmd"
alias gcam="safe_command '$message' $gcam_cmd"

#
# Git-Flow aliases
# https://github.com/nvie/gitflow
#

alias gf='nocorrect git flow'
alias gff='nocorrect git flow feature'
alias gffs='nocorrect git flow feature start'
alias g3f='nocorrect git flow feature finish'