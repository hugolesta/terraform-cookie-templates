module "vpc" {
  source     = "{{cookiecutter.modules.networking.vpc.source}}"
  namespace  = "{{cookiecutter.namespace}}"
  stage      = "{{cookiecutter.stage}}"
  name       = "{{cookiecutter.name}}"
  cidr_block = var.vpc["cidr_block"]
  tags       = local.tags

}

module "subnets" {
  source = "{{cookiecutter.modules.networking.subnets.source}}"

  availability_zones       = var.vpc["availability_zones"]
  vpc_id                   = module.vpc.vpc_id
  igw_id                   = module.vpc.igw_id
  cidr_block               = module.vpc.vpc_cidr_block
  nat_gateway_enabled      = true
  aws_route_create_timeout = "5m"
  aws_route_delete_timeout = "10m"
  tags                     = local.tags

}
