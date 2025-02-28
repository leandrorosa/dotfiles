alias ga='git add'
alias gs='git status'
alias gc='git commit -m '
alias gcm='git checkout master'
alias gcn='git checkout -b'
alias gpom='git push origin master'
alias gpum='git pull upstream master'
alias gpull='git pull origin'
alias gpush='git push origin'
alias kl='kubectl logs -f'
# alias docker="podman"
alias d='docker'
alias mci='mvn clean install'
alias rfish='source ~/.config/fish/config.fish'
alias dc='docker-compose'
alias greset='git checkout . && git reset && git clean -f && git clean -fd'i
alias superlinter='docker run -e RUN_LOCAL=true -v $PWD:/tmp/lint github/super-linter'
alias colima-start='colima start --network-address'
alias kalpine='kubectl run -it --rm --restart=Never alpine --image=alpine sh'
alias kubuntu='kubectl run -it --rm --restart=Never ubuntu --image=ubuntu bash'
alias ubuntu='docker run -it -v $PWD:/root/shared  ubuntu:xenial /bin/bash'
alias tf='terraform'
alias gw='./gradlew'
alias mw='./mvnw'
alias checkip='curl http://checkip.amazonaws.com'
alias kc="kubectl config use-context"
alias kn="kubectl config set-context --current --namespace="
alias argo-port-forward="kubectl port-forward svc/argocd-server -n argocd 8080:443"
alias project-manage="~/src/github.com/4screen/github-utilities/project_manage/project-manage.sh"
alias cd-4screen="cd ~/src/github.com/4screen"
alias cd-leandrorosa="cd ~/src/github.com/leandrorosa"
alias cd-maven="cd ~/.m2/repository"
alias act="act --container-architecture linux/amd64"
alias kfwd="sudo kubefwd services --all-namespaces"
alias podman-sock="ssh -i ~/.ssh/podman-machine-default -p 50299 -L'/tmp/podman.sock:/run/user/501/podman/podman.sock' -N core@localhost"
alias todo="jira issue list --assignee (jira me) -s \"~Done\" --plain"
alias k="kubectl"
alias tel="telepresence quit && telepresence connect"
alias tempo-dev="tempo-cli -c ~/.config/tempo/config-dev.yaml"
alias tempo-int="tempo-cli -c ~/.config/tempo/config-int.yaml"
alias tempo-prod="tempo-cli -c ~/.config/tempo/config-prod.yaml"
alias t="task"
alias bard="bard-cli"
alias pip="pip3"
alias idea="idea1"