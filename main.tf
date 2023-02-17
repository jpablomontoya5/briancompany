data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

resource "aws_instance" "test1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.nano"
  security_groups = [aws_security_group.SG1.name]

  tags = {
    Name = "ejercicio1"
  }

}



