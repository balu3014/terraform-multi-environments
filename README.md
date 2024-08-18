# terraform-multi-environments

# tfvars

#  -backend-config=path  
  Configuration to be merged with what is in the configuration file's 'backend' block. This can be either a path to an HCL file with key/value assignments (same format as terraform.tfvars) or a'key=value' format and can be specified multiple times. The backend type must be in the configurationitself.


# Prod Terraform-commands
*      terraform init -help
*      terraform init -reconfigure -backend-config=Prod-env/backend.tf
*      terraform init -backend-config=Prod-env/backend.tf
*      terraform validate -var-file=Prod-env/prod.tfvars
*      terraform plan -var-file=Prod-env/prod.tfvars
*      terraform apply -var-file=Prod-env/prod.tfvars
*      terraform destroy -var-file=Prod-env/prod.tfvars



# Dev  Terraform-commands
*      terraform init -help
*      terraform init -reconfigure -backend-config=Prod-env/backend.tf
*      terraform init -backend-config=Dev-env/backend.tf
*      terraform validate -var-file=Dev-env/dev.tfvars
*      terraform plan -var-file=Dev-env/dev.tfvars
*      terraform apply -var-file=Dev-env/dev.tfvars
*      terraform destroy -var-file=Dev-env/dev.tfvars

# ####Note#####
* terraform init -reconfigure will  play a major role is '.tfvars'.
* if we won't use the "-reconfigure" it may cause to destroy different environment resources.
* where .tfvars will manatain single "state.file" for both the environments.

* Compact Warnings: If you want to reduce verbosity in warnings, you can use the -compact-warnings option, but this does not address the root cause of the issue.

# Compact Warnings  command
*                   terraform apply -var-file="Dev-env/dev.tfvars" -compact-warnings

# WORKSPACE commands
*           terraform workspace new [</spacename>]
*           terraform workspace list [</spacename>]
*           terraform workspace select [</spacename>]
*           terraform workspace show [</spacename>]
*           terraform workspace delete [</spacename>]     

# Note
* workspace will use the single s3 bucket and it will maintain 2 sub-folder inside the s3 bucket envirnoment wise 
* workspace will maintain the different state-file for each environment 

# lookup function 
* ex:    lookup(map, key, default)
*        lookup(var.instance_type,terraform.workspace)
* "terrform.workspace" actually show the value of our path if we are in dev-env it will implement in dev-server if we are in prod-env it will implement in prod-servers