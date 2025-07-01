module "vpc" {
  source = "./vpc"
}

module "compute" {
  source = "./compute"
#   subnet_id = module.vpc.aws_subnet.subnet_a3.id
  subnet_id = module.vpc.subnet_a3_id
  security_group_ids = [
    "sg-02f937cdb5c5d27f9",
    "sg-063522d650bc29e1f"
  ]
}