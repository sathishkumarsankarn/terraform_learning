output "ec2_ami_id" {
    value = data.aws_ami.amz2linux.id
  
}

output "ec2_az_op" {
    # value = tomap({for az, i in data.aws_availability_zones.names: az => i.instance_type if length(i.instance_type) !=0})
    value = keys(tomap({for az, i in data.aws_ec2_instance_type_offerings.my_ins_type: az => i.instance_types if length(i.instance_types) !=0}))
  
}

output "ec2-sg-op" {
    value = module.security-group.security_group_vpc_id
  
}