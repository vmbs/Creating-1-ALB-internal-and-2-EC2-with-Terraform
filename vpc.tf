### Network
 
# Internal VPC
 
resource "aws_vpc" "sys-vpc-int" {
  cidr_block           = "172.21.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
 
  tags = {
    Name = "sys-vpc-int"
  }
}
 
# Subnets
 
resource "aws_subnet" "sys-private-1" {
  vpc_id                  = "${aws_vpc.sys-vpc-int.id}"
  cidr_block              = "172.21.40.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-west-1a"
 
  tags = {
    Name = "sys-private-1"
  }
}
 
resource "aws_subnet" "sys-private-2" {
  vpc_id                  = "${aws_vpc.sys-vpc-int.id}"
  cidr_block              = "172.21.50.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-west-1b"
 
  tags = {
    Name = "sys-private-2"
  }
}
 
resource "aws_subnet" "sys-private-3" {
  vpc_id                  = "${aws_vpc.sys-vpc-int.id}"
  cidr_block              = "172.21.60.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-west-1c"
 
  tags = {
    Name = "sys-private-3"
  }
}
