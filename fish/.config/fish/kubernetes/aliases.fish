alias k="kubectl"
alias kc="kubectl config use-context"
alias kn="kubectl config set-context --current --namespace="
alias kl='kubectl logs -f'

alias argo-port-forward="kubectl port-forward svc/argocd-server -n argocd 8080:443"

alias tel="telepresence quit && telepresence connect"

alias kalpine='kubectl run -it --rm --restart=Never alpine --image=alpine sh'
alias kubuntu='kubectl run -it --rm --restart=Never ubuntu --image=ubuntu bash'