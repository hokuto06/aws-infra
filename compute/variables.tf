variable "subnet_id" {
  description = "Subnet ID donde se lanza la EC2"
  type        = string
}

variable "security_group_ids" {
  description = "Lista de security groups asociados a la EC2"
  type        = list(string)
}