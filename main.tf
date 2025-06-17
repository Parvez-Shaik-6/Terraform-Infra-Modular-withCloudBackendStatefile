provider "aws" {
  region = "us-east-1"
  
}
module "vpcSg" {
  source = "./module/vpc_sg"
  cidr_block_vpc = var.cidr
  public_sub_cidr = var.pub_cidr
  public_sub_cidr1 = var.pub_cidr1
  private_sub_cidr = var.priv_cidr
  private_sub_cidr1 = var.priv_cidr1
  availability_zone_sub = var.availability_zone_sub
  availability_zone_sub1 = var.availability_zone_sub1
}
module "keyPair" {
  source = "./module/keyPair"
  keyname = var.keyname
}
module "ec2" {
  source = "./module/ec2"
  ami = var.ami
  subnet_id = module.vpcSg.private_sub[0]
  key_name = module.keyPair.keypair
  security_groups = [module.vpcSg.aws_security_groupec2]
  instance_type = var.instance_type
  instancename = var.instancename
}
module "rds" {
  source = "./module/rds"
  db_name = var.rds_name
  db_identifier = var.db_identify
  password = var.pass
  instance_class = var.instance_cls
  allocated_storage = var.allocated_gb
  subnet_ids = module.vpcSg.private_sub
  vpc_security_group_rds = [module.vpcSg.aws_security_grouprds]
  username = var.usernm
}
module "s3" {
  source = "./module/s3"
  aws_s3_bucket = var.bucketName
}