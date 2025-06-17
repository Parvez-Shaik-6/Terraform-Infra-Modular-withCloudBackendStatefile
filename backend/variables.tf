variable "aws_region" {
  description = "AWS Region"
  type        = string
  default = "us-east-1"
}
variable "aws_s3_bucket" {
  description = "S3 bucket name for Terraform backend"
  type        = string
  default = "my-bucket-my-wish001"
}
variable "aws_dynamodb_table" {
  description = "DynamoDB table name for Terraform state locking"
  type        = string
  default = "backend"
}
