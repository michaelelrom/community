variable "access_key" {
  type = string
  description = "AWS access key"
}

variable "secret_key" {
  type = string
  description = "AWS secret key"
  sensitive = true
}

variable "region" {
  type = string
  description = "AWS region"
}

variable "ami" {
  type = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
  description = "Instance type for the EC2 instance"
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
}

output "ip" {
  value       = aws_instance.ec2_instance.public_ip
  description = "Public IP address of the EC2 instance"
}
