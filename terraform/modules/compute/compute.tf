data "template_file" "user_data" {
  template = file("${path.module}/scripts/user_data.sh")
}

resource "aws_instance" "hello_instance" {
  ami                    = var.ec2_ami
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group]
  user_data              = base64encode(data.template_file.user_data.rendered)

  tags = {
    Name = "hello-instance"
  }
}
