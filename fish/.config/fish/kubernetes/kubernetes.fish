function kubectl
  kubecolor $argv
end

function k8s-switch-context -d "Switch to a different k8s context"
  # Check if a context is provided as an argument
  if set -q argv[1]
    set CONTEXT $argv[1]
  else
    # If no argument is provided, prompt the user to select a context
    echo "Select a k8s context:"
    set CONTEXT (kubectx | gum choose)
  end

  set K8S_CURRENT_CONTEXT (kubectl config current-context)
  if [ "$K8S_CURRENT_CONTEXT" != "$CONTEXT" ]
    kubectl config use-context $CONTEXT
  end

  set TELEPRESENCE_CONNECTED_CLUSTER (telepresence status --output yaml | yq -r '.user_daemon | select(.running == true) | .kubernetes_context')
  if [ "$TELEPRESENCE_CONNECTED_CLUSTER" != "$CONTEXT" ]
    echo "If telepresence fails to quit, run the 'telepresence-upgrade' task"
    telepresence quit && telepresence connect --context $CONTEXT
  end
end