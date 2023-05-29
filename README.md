# terraform-aws-s3
Criacao de bucket S3 com terraform

## TF commands

# Plan
terraform plan -out="tfplan.out"
# Apply
terraform apply "tfplan.out"
# Destroy
terraform destroy -auto-approve