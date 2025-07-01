output "vpc_id" {
  value = aws_vpc.prod.id
}

output "subnet_a1_id" {
  value = aws_subnet.subnet_a1.id
}

output "subnet_a3_id" {
  value = aws_subnet.subnet_a3.id
}

output "subnet_a4_id" {
  value = aws_subnet.subnet_a4.id
}
