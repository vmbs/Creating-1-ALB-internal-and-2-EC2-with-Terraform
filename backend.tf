terraform {
  backend "s3" {
    bucket = "vasile-sysadmin-architect-dublin"
    key    = "terraform/terraform.tfstate"
    region = "eu-west-1"
  }
}
