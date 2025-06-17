output "vpc_id" {
  description = "The ID of the created VPC"
  value = aws_vpc.test.id
}


output "aws_security_groupec2" {
  description = "Security group ID for EC2 instances"
  value = aws_security_group.ec2_sg.id
}


output "aws_security_grouprds" {
  description = "Security group ID for the RDS instance"
  value = aws_security_group.rds_sg.id
}


output "private_sub" {
  description = "List of private subnet IDs in multiple AZs"
  value = [aws_subnet.private.id,aws_subnet.private1.id]
}


output "publi_sub" {
  description = "List of public subnet IDs in multiple AZs"
  value = [aws_subnet.public.id,aws_subnet.public1.id]
}


output "igw_id" {
  description = "ID of the Internet Gateway attached to the VPC"
  value = aws_internet_gateway.igw.id
}


output "nat_gateway_id" {
  description = "ID of the NAT Gateway in the public subnet"
  value = aws_nat_gateway.nat.id
}