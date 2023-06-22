provider "aws" {
region = "ap-south-1"
access_key = "AKIAW7UULS6PJ7BDQS4C"
secret_key = "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"
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
