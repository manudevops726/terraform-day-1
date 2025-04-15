resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.instance_type
    availability_zone = "us-east-1b"

    tags = {
      Name = "dev"
    }
    
  
}





###########
# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "< 4.0"
#     }
#   }
# }



provider "aws" {

#   region = "ap-south-1"  
}
variables
####################
variable "ami_id" {
    description = "inserting amiid into main"
    type = string
    default = "ami-00a929b66ed6e0de6"
  
}

variable "instance_type" {
    type = string
    default = "t2.nano"
  
}
