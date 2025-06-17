resource "aws_db_subnet_group" "rds_group" {
  subnet_ids = var.subnet_ids
  name = "rds_group"
  
}

resource "aws_db_instance" "sql" {
  instance_class = var.instance_class
  engine = "mysql"
  identifier = var.db_identifier
  engine_version = "8.0"
  allocated_storage = var.allocated_storage
  db_name = var.db_name
  username = var.username
  password = var.password
  db_subnet_group_name = aws_db_subnet_group.rds_group.name
  vpc_security_group_ids = var.vpc_security_group_rds
  skip_final_snapshot = true
  publicly_accessible = false
  deletion_protection = false
  multi_az = true 
  tags = {
    name = "mysql_rds"
  }
}