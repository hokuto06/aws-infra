resource "aws_route_table_association" "rt_1_assoc_1" {
  subnet_id      = "subnet-00f72bf22637a6f01"
  route_table_id = aws_route_table.rt_1.id
}

resource "aws_route_table_association" "rt_2_assoc_1" {
  subnet_id      = "subnet-09fdcf85dc0fc2721"
  route_table_id = aws_route_table.rt_2.id
}

resource "aws_route_table_association" "rt_3_assoc_1" {
  subnet_id      = "subnet-012951a136e2651bd"
  route_table_id = aws_route_table.rt_3.id
}

resource "aws_route_table_association" "rt_3_assoc_2" {
  subnet_id      = "subnet-0eeafb6bc2661f153"
  route_table_id = aws_route_table.rt_3.id
}

resource "aws_route_table_association" "rt_3_assoc_3" {
  subnet_id      = "subnet-05ca18dbf2bb12adc"
  route_table_id = aws_route_table.rt_3.id
}

resource "aws_route_table_association" "rt_3_assoc_4" {
  subnet_id      = "subnet-021b02fabffd14ce3"
  route_table_id = aws_route_table.rt_3.id
}

resource "aws_route_table_association" "rt_4_assoc_1" {
  subnet_id      = "subnet-01cb60f643ee12dcb"
  route_table_id = aws_route_table.rt_4.id
}

