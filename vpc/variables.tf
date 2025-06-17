variable "cidr_block_vpc" {
  description = "CIDR block for the VPC"
  type        = string 
}


variable "public_sub_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}


variable "public_sub_cidr1" {
  description = "CIDR block for public subnet 2 (in another AZ)"
  type        = string
}


variable "private_sub_cidr" {
  description = "CIDR block for private subnet 1"
  type        = string
}


variable "private_sub_cidr1" {
  description = "CIDR block for private subnet 2 (in another AZ)"
  type        = string
}


variable "availability_zone_sub" {
  description = "Availability Zone for public and private subnet 1"
  type        = string
}


variable "availability_zone_sub1" {
  description = "Availability Zone for public and private subnet 2"
  type        = string
}