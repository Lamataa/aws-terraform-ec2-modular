resource "aws_vpc" "Hello_VPC" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "Hello VPC"
  }
}

resource "aws_internet_gateway" "Hello_IGW" {
  vpc_id = aws_vpc.Hello_VPC.id
  tags = {
    Name = "Hello IGW"
  }
}

resource "aws_subnet" "Hello_Public_Subnet" {
  vpc_id                  = aws_vpc.Hello_VPC.id
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    Name = "Hello Public Subnet"
  }
}

resource "aws_route_table" "Hello_Public_Route_Table" {
  vpc_id = aws_vpc.Hello_VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Hello_IGW.id
  }
  tags = {
    Name = "Hello Public Route Table"
  }
}

resource "aws_route_table_association" "route" {
  subnet_id      = aws_subnet.Hello_Public_Subnet.id
  route_table_id = aws_route_table.Hello_Public_Route_Table.id
}

resource "aws_security_group" "Hello_Security_Group" {
  name        = "Hello_Security_Group"
  description = "Hello Security Group"
  vpc_id      = aws_vpc.Hello_VPC.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Work Security Group"
  }
}
