eval "$(rbenv init -)"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\w\[\033[33m\][\$(rbenv version-name)]\$(parse_git_branch)\[\033[00m\] $ "

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin

export EDITOR="/Applications/Atom.app/Contents/MacOS/Atom -nw"

alias be="bundle exec"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
