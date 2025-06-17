provider "aws" {
  region = var.aws_region
}
# S3 Bucket for Terraform State
resource "aws_s3_bucket" "backend" {
  bucket = var.aws_s3_bucket
  force_destroy = true 
  tags = {
    name = "backend"
    environment = "dev"
  }

}
# Enable Versioning for S3 Bucket
resource "aws_s3_bucket_versioning" "versioning"{
  bucket = aws_s3_bucket.backend.id
  versioning_configuration {
    status = "Enabled"
  }
  
}
# DynamoDB Table for Locking
resource "aws_dynamodb_table" "backend" {
  name = var.aws_dynamodb_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    name = "backend"
    environment = "dev"

  }
}

