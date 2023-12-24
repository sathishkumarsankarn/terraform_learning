module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.4.0"

  name = var.vpc_name
  cidr = var.cidr_block

  azs             = data.aws_availability_zones.az.names
  private_subnets = var.pub_subnets
  public_subnets  = var.pri_subnets

  create_database_subnet_group = var.db_sub_group
  database_subnet_names = var.db_subnets
  create_database_subnet_route_table = var.db_route_table

  enable_dns_hostnames = var.dns_host
  enable_dns_support = var.dns_support

  enable_nat_gateway = var.nat_gtw
  create_igw = var.igtw
  # enable_vpn_gateway = true

  tags = local.comman_tags
  vpc_tags = local.comman_tags

  public_subnet_tags = {
    Type = "Public Subnets"
    "kubernetes.io/role/elb" = "1"
  }

  private_subnet_tags = {
    Type = "Private Subnets"
    "kubernetes.io/role/internal-elb" = "1"
  }

  database_subnet_tags = {
    Type = "Private DB Subnets"
    "kubernetes.io/role/internal-elb" = "1"
  }

}
