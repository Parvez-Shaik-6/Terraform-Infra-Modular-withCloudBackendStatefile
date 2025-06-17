resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name
  security_groups = var.security_groups
  associate_public_ip_address = var.public_ip_enable
  tags = {
    Name = var.instancename
  }
}