terraform {
  cloud {
    hostname = "harshit-fdo-docker-test.tf-support.hashicorpdemo.com"
    organization = "Harshit-FDO-Docker"

    workspaces {
      name = "CLI-Diven"
    }
  }
}
provider "aws" {
 region = "ap-south-1"
}

resource "aws_instance" "harshit-external-test" {
  ami           = "ami-09298640a92b2d12c"
  instance_type = "t2.micro"
  tags = {
    Name = "harshit-external-test"
  }
}
