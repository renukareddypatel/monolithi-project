provider "aws" {
region = "ap-south-1"
access_key = "AKIATC7RW3LC6XEAG3JN"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-012b9156f755804f5"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}

