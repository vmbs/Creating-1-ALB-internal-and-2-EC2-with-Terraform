variable "aws_region" {
  description = "The AWS region to create things in."
  default = "eu-west-1"
}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
 
variable "amis" {
  type = "map"
  default = {
    eu-west-1 = "ami-005b5c720e7b986d6"
  }
}
