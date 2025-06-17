variable "subnet_ids" {
  description = "List of private subnets for RDS"
  type        = list(string)
}


variable "vpc_security_group_rds" {
  description = "List of VPC security groups for RDS"
  type        = list(string)
}


variable "instance_class" {
  description = "RDS instance type (e.g. db.t3.micro)"
  type        = string
}


variable "db_identifier" {
  description = "Unique DB identifier"
  type        = string
}


variable "allocated_storage" {
  description = "Storage size in GB"
  type        = number
}


variable "db_name" {
  description = "Database name"
  type        = string
}


variable "username" {
  description = "Master DB username"
  type        = string
  sensitive   = true

}


variable "password" {
  description = "Master DB password"
  type        = string
  sensitive   = true
}