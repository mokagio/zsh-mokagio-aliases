alias xco='open -a Xcode .'

alias aco='open -a AppCode .'

alias pii='nocorrect pod install'
alias pi='nocorrect pod install && xco'

# Ruby gem to find unused Objective-C imports, and eventually delete them
# https://github.com/dblock/fui
alias fui='nocorrect fui'

# Note! this assumes you have xctool available in your path
# and the .xctoolargs in the current working directory
alias xt='xctool test'