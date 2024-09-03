variable "access_key" {
  type        = string
  description = "AWS access key"
}

variable "secret_key" {
  type        = string
  description = "AWS secret key"
  sensitive   = true
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "ip" {
  type        = string
  description = "IP address for the DNS record"
}

variable "dns_name" {
  type        = string
  description = "DNS name for the Route 53 record"
}

variable "zone_id" {
  type        = string
  description = "Route 53 hosted zone ID"
}

variable "ttl" {
  type        = number
  default     = 300
  description = "Time to live (TTL) for the DNS record"
}

variable "type" {
  type        = string
  default     = "A"
  description = "Record type (e.g., A, CNAME)"
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = var.dns_name
  type    = var.type
  ttl     = var.ttl
  records = [var.ip]
}
