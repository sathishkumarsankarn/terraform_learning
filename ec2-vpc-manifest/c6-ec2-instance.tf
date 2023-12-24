module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"

  for_each = tomap({for az, i in data.aws_ec2_instance_type_offerings.my_ins_type: az => i.instance_types if length(i.instance_types) !=0})

  name = "${local.name}-${each.key}"

#   availability_zone = keys(tomap({for az, i in data.aws_ec2_instance_type_offerings.my_ins_type: az => i.instance_types if length(i.instance_types) !=0}))

  instance_type          = var.inst_type
  key_name               = var.keypair_details
#   monitoring             = true
  vpc_security_group_ids = [module.security-group.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  tags = local.comman_tags
}