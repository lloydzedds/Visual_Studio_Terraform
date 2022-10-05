provider "aws" {
  region     = var.AWS_REGION
}

module "ec2_cluster" {
    source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance.git"

    name            = "my-cluster"
    ami             = "ami-0efda064d1b5e46a5"
    instance_type   = "t3.micro"
    subnet_id       = "subnet-024a169c8adb65b3c"
    instance_count  = var.environment == "Production" ? 2 : 1


    tags = {
    Terraform       = "true"
    Environment     = var.environment
    }
}