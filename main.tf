# resource "aws_instance" "tomcat" {
#     ami = var.ami
#     instance_type = var.instance_type
#     key_name = var.key_name
#     subnet_id = aws_subnet.main.id
#     security_groups = [ "first-sg" ]


# }