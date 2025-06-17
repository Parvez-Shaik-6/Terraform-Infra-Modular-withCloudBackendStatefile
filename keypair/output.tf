output "keypair" {
  description = "Name of the generated AWS key pair"
  value       = aws_key_pair.keyup.key_name
} 

output "private_key_path" {
  description = "Path to the saved private key file"
  value       = local_file.privatepem.filename
}

output "private_key" {
  description = "PEM-formatted private key (sensitive)"
  value       = tls_private_key.keypair.private_key_pem
  sensitive   = true
}