
resource "aws_instance" "MyInstnace" {
  ami           = "ami-0fd303abd14827300"
  instance_type = "t3.micro"

  tags = {
    Name = "terra_for_ansible"
  }
}

resource "aws_key_pair" "gcp_ansible" {
  key_name      = "gcp_ansible"
  public_key    = file(var.public_key_path)
}