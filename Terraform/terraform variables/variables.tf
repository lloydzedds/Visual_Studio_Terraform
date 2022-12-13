variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "eu-north-1"
}

variable "public_key_path" {
    description = "Public key path"
    default = "./gcp_ansible.pub"
  
}