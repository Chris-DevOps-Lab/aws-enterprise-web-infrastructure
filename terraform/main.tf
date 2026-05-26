module "vpc" {
  source          = "./modules/vpc"
  project_name    = var.project_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "security_group" {
  source       = "./modules/security-group"
  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
}

module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
}

module "ec2" {
  source             = "./modules/ec2"
  project_name        = var.project_name
  private_subnet_ids   = module.vpc.private_subnet_ids
  web_sg_id           = module.security_group.web_sg_id
  instance_type       = var.instance_type
}

module "alb" {
  source            = "./modules/alb"
  project_name      = var.project_name
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  alb_sg_id         = module.security_group.alb_sg_id
  instance_ids      = module.ec2.instance_ids
}