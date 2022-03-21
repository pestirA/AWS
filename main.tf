terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}
provider "aws" {
  profile = "default" #https://github.com/hashicorp/terraform-provider-aws/issues/15361
  region  = "us-east-1"
}
resource "aws_instance" "cert_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.nano"
  tags = {
    Name = "cert-server"
  }
}
