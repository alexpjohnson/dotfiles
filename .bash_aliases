alias reload='source ~/.bash_profile'
alias reload_prompt='source ~/.bashrc'

alias cls='printf "\033c"'
alias ll="ls -a1"
alias gits='git st'
alias gita='git add -A :/'
alias gitd='git df'
alias gitc='git ci -m'
alias rs='rails server'
alias rc='rails console'
alias rcs='rails console --sandbox'
alias dev='cd ~/kitcheck/'
alias api='cd ~/kitcheck/kc-api'
alias dotfiles='cd ~/projects/dotfiles'
alias rake='bundle exec rake'
alias prunelocal="git branch --merged master | grep -v 'master$' | xargs git branch -d"
alias redis_server="redis-server /usr/local/etc/redis.conf"

greprails() { grep $1 -r --exclude-dir="coverage" --exclude-dir="tmp" $2; }
far() { find $1 -type f -name '*' -exec sed -i '' s/$2/$3/g {} + ; }
gitme() { git $1 --author=$(git config --get user.email); }

