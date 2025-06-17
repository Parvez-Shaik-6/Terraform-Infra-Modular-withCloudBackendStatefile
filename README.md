# Terraform Project
This repository contains a Terraform project using module-based architecture.

Structure
`modules/` - reusable Terraform modules
`main.tf` - root configuration
`variables.tf` - root input variables
`outputs.tf` - root output values
`terraform.tfvars` - actual values that are passed i.e. parameters or values that variables.tf hold
# Usage
If you want to implement cloud backend which centralizez the statefile for collaboration and track organization infra, first implement backend module of branch named backend, implement it in other workspace, since for main setup to have cloud statefile and statelocking a storage and locking service is a prerequisite 
 by checking out only backend branch or only cloning the backend branch
 implement the following steps
```bash
terraform init
terraform plan (Dry Run let's you know about the changes that will bw implemented)
terraform apply
```
once done clone the main branch and then steps
```bash
terraform init
terraform plan (Dry Run let's you know about the changes that will bw implemented)
terraform apply
```
# terraform.tfvars
it contains the example values, you can use your own values accordingly
# Moudlar Approach
Here modules concept of terraform is being implied for flexibility and easse of work which automates infra provisioning
also for ec2,s3,rds values such as subnet,vpc,keypair,are dynamically passed from modules output