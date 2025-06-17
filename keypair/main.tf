resource "tls_private_key" "keypair" {
  algorithm = "RSA"
  rsa_bits = 4096
  
}
resource "aws_key_pair" "keyup" {
  key_name = var.keyname
  public_key = tls_private_key.keypair.public_key_openssh
  
}
resource "local_file" "privatepem" {
  content = tls_private_key.keypair.private_key_pem
  filename = "${path.module}/${var.keyname}.pem"
  file_permission = 0400

  
}