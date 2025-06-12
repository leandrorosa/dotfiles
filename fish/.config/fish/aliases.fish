# alias docker="podman"
alias docker="podman"
alias d='docker'
alias mci='mvn clean install'
alias rfish='source ~/.config/fish/config.fish'
alias dc='docker-compose'
alias greset='git checkout . && git reset && git clean -f && git clean -fd'i
alias superlinter='docker run -e RUN_LOCAL=true -v $PWD:/tmp/lint github/super-linter'
alias colima-start='colima start --network-address'

alias ubuntu='docker run -it -v $PWD:/root/shared  ubuntu:xenial /bin/bash'
alias tf='terraform'
alias gw='./gradlew'
alias mw='./mvnw'
alias checkip='curl http://checkip.amazonaws.com'
alias project-manage="~/src/github.com/4screen/github-utilities/project_manage/project-manage.sh"
alias cd-4screen="cd ~/src/github.com/4screen"
alias cd-leandrorosa="cd ~/src/github.com/leandrorosa"
alias cd-maven="cd ~/.m2/repository"
alias act="act --container-architecture linux/amd64"
alias podman-sock="ssh -i ~/.ssh/podman-machine-default -p 50299 -L'/tmp/podman.sock:/run/user/501/podman/podman.sock' -N core@localhost"
alias t="task"
alias idea="idea1"