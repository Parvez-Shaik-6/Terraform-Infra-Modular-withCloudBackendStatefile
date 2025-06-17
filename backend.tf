terraform {
  backend "s3" {
    bucket = "my-bucket-my-wish001"
    key = "way/to/backend/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "backend"
  }
    
 }