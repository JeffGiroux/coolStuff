# Alias - misc
alias ll='ls -al'

# Alias - ssh shortcuts
alias assh='ssh -l admin $1'
alias azssh='ssh -l azureuser $1'
alias ussh='ssh -l ubuntu $1'
alias vissh='vi ~/.ssh/known_hosts'

# Alias - k8s
alias k=kubectl
complete -F __start_kubectl k

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

# Google Cloud Credentials
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/yourFile.json"

# kubectl autocompletion stuff
source <(kubectl completion bash)
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi
source ~/.kube/kubectl_autocompletion

# Volterra API Console
source /path/to/yourConfig
export VOLT_API_TIMEOUT=90s

# direnv
eval "$(direnv hook bash)"

# GO
PATH=$PATH:/usr/local/go/bin
