
resource "aws_instance" "MyInstnace" {
  ami           = "ami-0fd303abd14827300"
  instance_type = "t3.micro"

  tags = {
    Name = "terra_for_ansible"
  }
}