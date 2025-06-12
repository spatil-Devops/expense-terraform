terraform init -backend-config=env-${env}/state.tfvars
terraform apply -var-file=env-${env}/main.tfvars -auto-approve -var vault_token=${vault_token} -var SSH_PASSWORD=${SSH_PASSWORD}