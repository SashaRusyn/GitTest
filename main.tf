provider "aws" {
    region = "eu-central-1"
    access_key = "AKIA5PIX4XSOMZDAM3PQ"
    secret_key = "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"
}

resource "aws_instance" "web" {
    ami = "ami-0caef02b518350c8b"
    instance_type = "t2.micro"
    key_name = "lab4"
    vpc_security_group_ids = [aws_security_group.web.id]
    user_data = <<E0F
#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
E0F
}

resource "aws_security_group" "web" {
    name = "web_security_group"
    description = "none"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

