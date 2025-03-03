function git-push-current-branch -d "Push the current branch to the remote"
    # https://git-blame.blogspot.com/2013/06/checking-current-branch-programatically.html
    set CURRENT_BRANCH (git symbolic-ref --short -q HEAD)
    git push origin $CURRENT_BRANCH
end