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
alias gnb='git checkout -b'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git merge'
alias gf='git fetch'
alias gt='git tag'
# merge by always making a new commit (--no-ff) and open editor for the commit message (-e)
alias gmm='git merge --no-ff -e' 

# See https://coderwall.com/p/euwpig
alias glg="git log \
  --graph \
  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue) %an%Creset' \
  --abbrev-commit"
# see above + only show commits made in the the current branch
alias glgf='glg --first-parent'

# Stay safe when git commit -a
safe_command() {
	message=$1
	shift 1
	echo "$message"; echo -n "\e[0;33;49mAre you sure? (y/n) \e[0m"; read ANSWER; if [ $ANSWER = y ]; then $*; fi;
}
message='\e[0;33;49mYou are about to perform a git commit all.\e[0m'
# no correct doesn't work here... why?
gca_cmd='git commit -a'
gcam_cmd='git commit -a -m'
alias gca="safe_command '$message' $gca_cmd"
alias gcam="safe_command '$message' $gcam_cmd"

alias gri="git rebase --interactive"
alias gpt="git push; git push --tags"
alias gap="git add -p"
alias gchp="git checkout -p"

#
# Git-Flow aliases
# https://github.com/nvie/gitflow
#

alias gfl='nocorrect git flow'
alias gff='nocorrect git flow feature'
alias gffs='nocorrect git flow feature start'
alias g3f='nocorrect git flow feature finish'
