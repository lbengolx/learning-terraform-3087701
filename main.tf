data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Amazon linux 2
}

resource "aws_instance" "web_gratis" {
  ami           = ami-03972092c42e8c0ca
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}
