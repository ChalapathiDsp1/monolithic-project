provider "aws" {
region = "us-east-1"
access_key = ""
secret_key = ""
}

resource "aws_instance" "key" {
ami = "ami-090e0fc566929d98b"
instance_type = "t2.micro"
key_name = "VIGINIA"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
