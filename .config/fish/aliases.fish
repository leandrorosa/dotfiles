alias ga='git add'
alias gc='git commit -m '
alias gcm='git checkout master'
alias gcn='git checkout -b'
alias gpom='git push origin master'
alias gpum='git pull upstream master'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gpupo='git pull upstream master && git push origin master'
alias gs='git status'
alias kl='kubectl logs -f'
alias mci='mvn clean install'
alias rfish='source ~/.config/fish/config.fish'
alias hiera-decrypt='docker run -v ~/eyaml-keys/:/keys/ -it --rm --name eyaml halberom/hiera-eyaml decrypt -s'
alias hiera-encrypt='docker run -v ~/eyaml-keys/:/keys/ -it --rm --name eyaml halberom/hiera-eyaml encrypt -s'
alias jh='ssh -i ~/.ssh/issuing_dev.pem -p 443 centos@lb-test-instance-dev-838521851.eu-central-1.elb.amazonaws.com'
alias dc='docker-compose'
alias dscp='scp -i ~/.ssh/temp_access.pem -P 443'
alias jhq='ssh -i ~/.ssh/iss-qa.pem -p 443 centos@lb-test-instance-qa-1548690849.eu-central-1.elb.amazonaws.com'
alias bundle='brew bundle dump'


