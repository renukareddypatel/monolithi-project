provider "aws" {
region = "ap-south-1"
access_key = "AKIATC7RW3LC6RCKGI7X"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-012b9156f755804f5"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
environment = "dev"
}
}

