output "vpc_id" {
  description = "ID of the created VPC"
  value = module.vpcSg.vpc_id
  
}
output "aws_security_groupec2" {
  description = "Security Group ID used for EC2 instances"
  value = module.vpcSg.aws_security_groupec2
}
output "aws_security_grouprds" {
  description = "Security Group ID used for RDS instance"
  value = module.vpcSg.aws_security_grouprds
}
output "private_sub" {
  description = "List of private subnet IDs used for EC2 and RDS"
  value = module.vpcSg.private_sub
}
output "publi_sub" {
  description = "List of public subnet IDs"
  value = module.vpcSg.publi_sub
}
output "bucketname" {
   description = "Name of the created S3 bucket"
  value = module.s3.bucketname
}
output "versioning" {
  description = "Versioning status of the S3 bucket"
  value = module.s3.versioning
}
output "aws_db_instance_id" {
  description = "RDS database instance ID"
  value = module.rds.aws_db_instance_id
  
}
output "endpoint" {
  description = "RDS endpoint for connecting to the database"
  value = module.rds.endpoint
  
}
output "keypair" {
  description = "Name of the generated EC2 key pair"
  value = module.keyPair.keypair
  
}
output "name" {
  description = "Name tag assigned to the EC2 instance"
  value = module.ec2.name
  
}
output "instanceid" {
  description = "ID of the launched EC2 instance"
  value = module.ec2.instanceid
}
output "privateip" {
  description = "Private IP address of the EC2 instance"
  value = module.ec2.privateip
}