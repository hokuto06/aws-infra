resource "aws_subnet" "subnet_a1" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "subnet-public-a1"
  }    
}
resource "aws_subnet" "subnet_c2" {
    vpc_id                  = aws_vpc.prod.id
    cidr_block              = "10.0.2.0/25"
    availability_zone       = "us-east-1c"
    map_public_ip_on_launch = false

    tags = {
      Name = "subnet-public-c2"
    }
}
resource "aws_subnet" "subnet_d2" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.0.2.128/25"
  availability_zone       = "us-east-1d"
  map_public_ip_on_launch = false
  tags = {
    Name = "subnet-public-d2"
  }
}
resource "aws_subnet" "subnet_e2" {
    vpc_id                  = aws_vpc.prod.id
    cidr_block              = "10.0.4.0/25"
    availability_zone       = "us-east-1e"
    map_public_ip_on_launch = false
    tags = {
      Name = "subnet-public-e2"
    }
}
resource "aws_subnet" "subnet_f2" {
    vpc_id                  = aws_vpc.prod.id
    cidr_block              = "10.0.4.128/25"
    availability_zone       = "us-east-1f"
    map_public_ip_on_launch = false
    tags = {
      Name = "subnet-public-f2"
    }   
}
resource "aws_subnet" "subnet_a3" {
    vpc_id                  = aws_vpc.prod.id
    cidr_block              = "10.0.3.0/24"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = false
    tags = {
      Name = "subnet-public-a3"
    }
}
resource "aws_subnet" "subnet_a4" {
    vpc_id                  = aws_vpc.prod.id
    cidr_block              = "10.0.0.128/25"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = false
    tags = {
      Name = "subnet-public-a4"
    }
}
