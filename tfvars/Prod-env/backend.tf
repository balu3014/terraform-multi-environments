    bucket = "my-prod-s3-bucket-1"
    key    = "prod-bucket"
    region = "us-east-1"
    dynamodb_table = "MY-PROD-DYNAMODB-TABLE"

# -backend-config=path    Configuration to be merged with what is in the
#                           configuration file's 'backend' block. This can be
#                           either a path to an HCL file with key/value
#                           assignments (same format as terraform.tfvars) or a
#                           'key=value' format, and can be specified multiple
#                           times. The backend type must be in the configuration
#                           itself.



#command : terraform init -backend-config=Prod-env/backend.tf