output "vpc_op" {
    value = toset(data.aws_availability_zones.az.names)
}

output "vpc_id_op" {
  value = module.vpc.vgw_id
}