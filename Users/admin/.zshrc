# Prompt
PROMPT="%m %~%# "

# Alias - misc
alias ll='ls -al'

# Alias - ssh shortcuts
alias assh='ssh -l admin $1'
alias azssh='ssh -l azureuser $1'
alias ussh='ssh -l ubuntu $1'
alias vissh='vi ~/.ssh/known_hosts'

# Alias - terraform
alias tf=terraform
alias tfi="terraform init"
alias tfc="terraform validate"
alias tfa="terraform apply"
alias tfaa="terraform apply -auto-approve"
alias tfd="terraform destroy"
alias tfdd="terraform destroy -auto-approve"
alias tfv="terraform version"
alias tff="terraform fmt"
alias tfp="terraform plan"
alias tfs="terraform show"

# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"

# aws cli autocomplete
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws