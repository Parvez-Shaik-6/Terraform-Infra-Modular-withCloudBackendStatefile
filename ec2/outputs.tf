output "name" {
  description = "Name tag of the EC2 instance"
  value = aws_instance.ec2.tags["Name"] 
}


output "instanceid" {
  description = "ID of the EC2 instance"
  value = aws_instance.ec2.id 
}


output "privateip" {
   description = "Private IP address of the EC2 instance"
   value = aws_instance.ec2.private_ip 
}


output "public_IP"{
  description = "Public IP address of the EC2 instance (if enabled)"
  value = aws_instance.ec2.public_ip !=null ? aws_instance.ec2.public_ip : "No Public IP assigned "
}