output "ec2_instance_id" {
  value = module.compute.ec2_instance_id
}

output "ec2_public_ip" {
  value = module.compute.ec2_public_ip
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = [
    module.vpc.subnet_a1_id,
    module.vpc.subnet_a3_id,
    module.vpc.subnet_a4_id
  ]
}