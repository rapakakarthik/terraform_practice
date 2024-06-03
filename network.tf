resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = merge(
    var.resource_tags,
    {
      Name = "Master"
    }
  )
  }
  
 



# resource "aws_subnet" "main" {
#     vpc_id = aws_vpc.main.id
#     cidr_block = "10.0.1.0/24"
#     availability_zone = "ap-south-1"
#     map_public_ip_on_launch = true

#     tags = var.resource_tags

# }

# resource "aws_internet_gateway" "main" {
#     vpc_id = aws_vpc.main.id
#     tags = var.resource_tags
# }

# resource "aws_route_table" "main" {
#     vpc_id = aws_vpc.main.id
#     route = [ aws_internet_gateway.main ]
#     tags = var.resource_tags

# }