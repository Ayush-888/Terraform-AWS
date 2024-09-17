provider "aws" {
  region = "us-east-1"
}


module "vpc" {
  source   = "./modules/vpc"
  cidr     = var.cidr
  vpc_name = var.vpc_name
}

module "subnets" {
  source      = "./modules/subnets"
  vpc_id      = module.vpc.vpc_id
  cidr_sb1    = var.cidr_sb1
  zone_sb1    = var.zone_sb1
  subnet_1    = var.subnet_1
  cidr_sb2    = var.cidr_sb2
  zone_sb2    = var.zone_sb2
  subnet_2    = var.subnet_2
  igw         = var.igw
  route_table = var.route_table
}

module "security-group" {
  source       = "./modules/security-group"
  vpc_id       = module.vpc.vpc_id
  security_grp = var.security_grp
}

module "eks" {
  source            = "./modules/eks"
  cluster_name      = var.cluster_name
  cluster_version   = var.cluster_version
  subnet_ids        = [module.subnets.subnet_1_id, module.subnets.subnet_2_id]
  vpc_id            = module.vpc.vpc_id
  security_group_id = module.security-group.security_group_id
  ami_types         = var.ami_types
  instance_types    = var.instance_types
}

/*
module "s3" {
  source  = "./modules/s3"
  s3_name = var.s3_name
}
*/

module "ec2" {
  source            = "./modules/ec2"
  ami_type_ec2      = var.ami_type_ec2
  instance_type     = var.instance_type
  security_group_id = module.security-group.security_group_id
  subnet_id         = module.subnets.subnet_1_id
  web_server        = var.web_server
  key_name          = var.key_name
}

module "alb" {
  source            = "./modules/alb"
  alb_name          = var.alb_name
  security_group_id = module.security-group.security_group_id
  subnet_ids        = [module.subnets.subnet_1_id, module.subnets.subnet_2_id]
  vpc_id            = module.vpc.vpc_id
  tg_name           = var.tg_name
  instance_id       = module.ec2.instance_id
}
