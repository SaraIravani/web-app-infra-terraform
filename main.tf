terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
}
module "security_group" {
  source = "./modules/security_group"
  vpc_id = var.vpc_id
}

module "ec2" {
  source             = "./modules/ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  security_group_id  = module.security_group.web_server_security_group_id
  subnet_id          = var.subnet_id  
}

