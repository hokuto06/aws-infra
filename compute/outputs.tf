output "ec2_instance_id" {
  value = aws_instance.contenedores.id
}

output "ec2_public_ip" {
  value = aws_eip.contenedores.public_ip
}
