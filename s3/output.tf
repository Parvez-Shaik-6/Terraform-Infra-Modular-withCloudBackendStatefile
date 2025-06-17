output "bucketname" {
  value = aws_s3_bucket.backend.id
}
output "versioning" {
  value = aws_s3_bucket_versioning.versioning.versioning_configuration[0].status
}