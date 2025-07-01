resource "aws_eip" "contenedores" {
  tags = {
    Name = "eip-contenedores"
  }
}
resource "aws_eip_association" "contenedores" {
  instance_id   = aws_instance.contenedores.id
  allocation_id = aws_eip.contenedores.id
}
