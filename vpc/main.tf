resource "aws_vpc" "test" {
  cidr_block = var.cidr_block_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    name = "dev"
  }
  
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.test.id
  tags = {
    name = "igw"
  }

  
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.test.id
  cidr_block = var.public_sub_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_sub
  tags = {
    name = "publi_sub"
  }
  
}
resource "aws_subnet" "public1" {
  vpc_id = aws_vpc.test.id
  cidr_block = var.public_sub_cidr1
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_sub1
  tags = {
    name = "publi_sub1"
  }
  
}
resource "aws_subnet" "private" {
  vpc_id = aws_vpc.test.id
  cidr_block = var.private_sub_cidr
  availability_zone = var.availability_zone_sub
  map_public_ip_on_launch = false
  tags = {
    name = "private_sub"
  }
}
resource "aws_subnet" "private1" {
  vpc_id = aws_vpc.test.id
  cidr_block = var.private_sub_cidr1
  availability_zone = var.availability_zone_sub1
  map_public_ip_on_launch = false
  tags = {
    name = "private_sub1"
  }
}
resource "aws_eip" "EIP" {
  tags = {
    name = "EIP"
  }
  
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.EIP.id
  subnet_id = aws_subnet.public.id
  tags = {
    name = "nat_gate"

  }
    depends_on = [
    aws_eip.EIP,
    aws_subnet.public,
    aws_subnet.public1
  ]
}
resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.test.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    name = "public_rt"
  }
  
}
resource "aws_route_table_association" "pub_assoc" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.public_route.id

  
}
resource "aws_route_table_association" "pub_assoc1" {
  subnet_id = aws_subnet.public1.id
  route_table_id = aws_route_table.public_route.id

  
}
resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.test.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }
  tags = {
    name = "private_rt"
  }
  
}
resource "aws_route_table_association" "private_assoc" {
  subnet_id = aws_subnet.private.id
  route_table_id = aws_route_table.private_route.id

  
}
resource "aws_route_table_association" "private_assoc1" {
  subnet_id = aws_subnet.private1.id
  route_table_id = aws_route_table.private_route.id

  
}
resource "aws_security_group" "ec2_sg" {
  name = "ec2_eg"
  vpc_id = aws_vpc.test.id
  egress  {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
    
  }
  #ingress {
    #from_port = 3306
    #to_port = 3306
    #protocol = "tcp"
    #security_groups = [ aws_security_group.rds_sg.id ]  /if rds needs to reach ec2 uncomment ingress block
  #}
  
}
resource "aws_security_group" "rds_sg" {
  name = "rds_sg"
  vpc_id = aws_vpc.test.id
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    security_groups = [ aws_security_group.ec2_sg.id ]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  
}