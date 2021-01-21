resource "aws_instance" "sys-db" {
  ami = "${lookup(var.amis, var.aws_region)}"
  count = 4
  instance_type = "t2.micro"
  key_name      = "sys_vasile_key"
  tags = {
    Name = "Vasile-WEB-0${count.index}"
  }
}
