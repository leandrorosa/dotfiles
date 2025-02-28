function argocd-open-ui --description 'Open ArgoCD UI in the browser'
    # Check if a context is provided as an argument
    if set -q argv[1]
        set CONTEXT $argv[1]
    else
        # If no argument is provided, prompt the user to select a context
        echo "Select a k8s context:"
        set CONTEXT (kubectx | gum choose)
    end
    
    k8s-switch-context $CONTEXT
    open http://argocd-server.argocd/argo-cd/login
end