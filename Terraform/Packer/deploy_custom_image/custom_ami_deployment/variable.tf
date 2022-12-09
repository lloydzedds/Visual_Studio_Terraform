variable "public_key_path" {
    description = "Public key path"
    default = "~/.ssh/mod_key.pub"
  
}

variable "ENVIRONMENT" {
    type = string
    default = "development"
}

variable "AMI_ID" {
    type = string
    default = ""
  
}
variable "AWS_REGION" {
    type        = string
    default     = "eu-north-1"
}
variable "MUMBAI_REGION" {
    type    = string
    default = "ap-south-1"
}

variable "chandu_region" {
    type    = string
    default = "us-east-1"
  
}

variable "INSTANCE_TYPE" {
    default     = "t3.micro"
}