provider "aws" {
    region  = var.region
    profile = var.profile
}  

 # Terraform remote state
terraform {
    backend "s3" {
        profile = "raj"
        bucket  = "terraform-statefile-storage-place"
        key     = "environments/test/terraform.tfstate"
        region  = "us-east-1"
            }    
}