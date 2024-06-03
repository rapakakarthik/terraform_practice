variable "ami" {
  type    = string
  default = "ami-00fa32593b478ad6e"

}
variable "instance_type" {
  type    = string
  default = "t2.micro"

}
variable "key_name" {
  type    = string
  default = "first-key"

}

variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default = {
    project     = "project-alpha",
    environment = "dev"
  }
}

variable "tags" {
    type = string
    default = "alpha-resources"
  
}

