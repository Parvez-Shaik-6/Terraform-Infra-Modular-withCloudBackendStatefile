output "aws_s3_bucket_name" {
  description = "S3 bucket name used for Terraform backend"
  value = aws_s3_bucket.backend.bucket
  
}
output "versioning_stat" {
  description = "S3 bucket versioning status"
  value = aws_s3_bucket_versioning.versioning.versioning_configuration[0].status
}

output "table_name" {
  description = "DynamoDB table name used for Terraform state locking"
  value = aws_dynamodb_table.backend.name
  
}