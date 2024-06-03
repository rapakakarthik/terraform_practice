resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = merge(
    var.resource_tags,
    {
      Name = "Master"
    }
  )
}


resource "aws_subnet" "main" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = merge(
    var.resource_tags,
    {
      Name = "Public_Subnet"
    }
  )

}


resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = merge(
    var.resource_tags,
    {
      Name = "Igw"
    }
  )
}

resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
  tags = merge(
    var.resource_tags,
    {
      Name = "RouteTable"
    }
  )

}