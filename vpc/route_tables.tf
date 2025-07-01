resource "aws_route_table" "rt_1" {
  vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "172.17.0.0/16"
    network_interface_id = "eni-0c12b53d642443129"
  }
  route {
    cidr_block = "172.18.0.0/16"
    network_interface_id = "eni-0305a1474261a81ad"
  }
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-044ac3ca8f5a7b911"
  }

  tags = {
    Name = "rt_1"
  }
}

resource "aws_route_table" "rt_2" {
  vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "172.17.0.0/16"
    network_interface_id = "eni-0c12b53d642443129"
  }
  route {
    cidr_block = "172.18.0.0/16"
    network_interface_id = "eni-0305a1474261a81ad"
  }
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-044ac3ca8f5a7b911"
  }

  tags = {
    Name = "rt_2"
  }
}

resource "aws_route_table" "rt_3" {
  vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }

  tags = {
    Name = "rt_3"
  }
}

resource "aws_route_table" "rt_4" {
  vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "172.17.0.0/24"
    network_interface_id = "eni-0c12b53d642443129"
  }
  route {
    cidr_block = "172.18.0.0/16"
    network_interface_id = "eni-0305a1474261a81ad"
  }
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-044ac3ca8f5a7b911"
  }

  tags = {
    Name = "rt_4"
  }
}
