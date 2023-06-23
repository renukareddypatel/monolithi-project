provider "aws" {
region = "ap-south-1"
access_key = "AKIATC7RW3LCRT5NGGO4"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-012b9156f755804f5"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.sg.id]
tags = {
Name = "project-instance"
environment = "dev"
}
}

