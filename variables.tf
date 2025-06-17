variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
}


variable "pub_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}


variable "pub_cidr1" {
  description = "CIDR block for public subnet 2"
  type        = string
}


variable "priv_cidr" {
  description = "CIDR block for private subnet 1"
  type        = string
}


variable "priv_cidr1" {
  description = "CIDR block for private subnet 2"
  type        = string
}


variable "availability_zone_sub" {
  description = "AZ for subnet 1"
  type        = string
}


variable "availability_zone_sub1" {
  description = "AZ for subnet 2"
  type        = string
}


variable "keyname" {
  description = "Name of the SSH key pair"
  type        = string
}


variable "ami" {
 description = "AMI ID for the EC2 instance"
  type        = string 
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}


variable "instancename" {
  description = "Name tag for EC2 instance"
  type        = string
}


variable "rds_name" {
  description = "Database name for RDS"
  type        = string
}


variable "usernm" {
  description = "Username for RDS DB"
  type        = string
}


variable "allocated_gb" {
  description = "Allocated storage for RDS (in GB)"
  type        = number
}


variable "db_identify" {
  description = "RDS DB instance identifier"
  type        = string
}


variable "instance_cls" {
  description = "RDS DB instance class"
  type        = string
}


variable "pass" {
  description = "Password for the RDS DB user"
  type        = string
  sensitive   = true
}


variable "bucketName" {
  description = "Name for the S3 bucket"
  type        = string
}