module "network" {
  source = "./modules/network"
}

module "compute" {
  source         = "./modules/compute"
  ec2_ami        = var.ec2_ami
  vpc_id         = module.network.vpc_id
  subnet_id      = module.network.public_subnet_id
  security_group = module.network.security_group_id
}
