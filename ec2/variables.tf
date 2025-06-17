variable "ami" {
  description = "AMI ID to launch the EC2 instance with"
  type = string 
}


variable "instance_type" {
  description = "EC2 instance type"
   type = string 
} 


variable "subnet_id" {
  description = "Subnet ID to launch the instance in" 
  type = string
}


variable "key_name" {
  description = "Name of the SSH Key pair"
  type = string 
}


variable "security_groups" {
  description = "List of security groups to associate with the instance"
  type        = list(string)
}


variable "instancename" {
  description = "EC2 instance Name tag"
  type        = string 
}


variable "public_ip_enable"{
  description = "Can define to associate public IP or not"
  type = bool
}