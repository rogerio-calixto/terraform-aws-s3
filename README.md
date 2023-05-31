# terraform-aws-s3
Creates S3 bucket

# Instruction:

Set the variables below according to your needs:

- region
- bucket_name

## Example:

- region      -> "us-east-1"
- bucket_name -> "devops-portfolio-bucket"
- 
## TF commands

# Plan
terraform plan -out="tfplan.out"
# Apply
terraform apply "tfplan.out"
# Destroy
terraform destroy -auto-approve
