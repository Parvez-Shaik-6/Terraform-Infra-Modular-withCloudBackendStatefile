resource "aws_s3_bucket" "backend" {
  bucket = var.aws_s3_bucket
  force_destroy = true
  tags = {
    name = "backend"
    environment = "dev"
  }
}


resource "aws_s3_bucket_versioning" "versioning"{
  bucket = aws_s3_bucket.backend.id
  
  versioning_configuration {
    status = "Enabled"
  }
}