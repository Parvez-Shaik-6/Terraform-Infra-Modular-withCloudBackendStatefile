output "aws_db_instance_id" {
  description = "The ID of the RDS instance"
  value = aws_db_instance.sql.id
  
}

output "endpoint" {
  description = "RDS endpoint to connect to"
  value = aws_db_instance.sql.endpoint
  
}

output "username" {
  description = "Database master username"
  value       = var.username
  sensitive   = true
}