#!/bin/bash

export TF_CLI_CONFIG_FILE=credentials.tfrc.json

terraform init
terraform init --upgrade
terraform fmt
terraform validate
terraform plan -var-file="private.tfvars"
