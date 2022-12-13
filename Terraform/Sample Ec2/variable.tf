variable "public_key_path" {
    description = "Public key path"
    default = "./id_rsa.pub"
  
}

variable "ENVIRONMENT" {
    type = string
    default = "development"
}

variable "AMI_ID" {
    type = string
    default = "ami-0fd303abd14827300"
  
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