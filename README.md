# terraform-multi-environments


#  -backend-config=path    Configuration to be merged with what is in the
*                           configuration file's 'backend' block. This can be
*                           either a path to an HCL file with key/value
*                           assignments (same format as terraform.tfvars) or a
*                           'key=value' format, and can be specified multiple
*                           times. The backend type must be in the configuration
*                           itself.
# commands
* terraform init -help
* terraform init -backend-config=Prod-env/backend.tf
* terraform validate -var-file=Prod-env/prod.tfvars
* terraform plan -var-file=Prod-env/prod.tfvars
* terraform apply -var-file=Prod-env/prod.tfvars
* terraform destroy -var-file=Prod-env/prod.tfvars



# commands
* terraform init -help
* terraform init -backend-config=Dev-env/backend.tf
* terraform validate -var-file=Dev-env/dev.tfvars
* terraform plan -var-file=Dev-env/dev.tfvars
* terraform apply -var-file=Dev-env/dev.tfvars
* terraform destroy -var-file=Dev-env/dev.tfvars

* Compact Warnings: If you want to reduce verbosity in warnings, you can use the -compact-warnings option, but this does not address the root cause of the issue.

* terraform apply -var-file="Dev-env/dev.tfvars" -compact-warnings
