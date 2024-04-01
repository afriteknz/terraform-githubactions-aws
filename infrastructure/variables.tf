variable "aws_region" {
  default = "ap-southeast-2"
}

variable "environment" {
  default = "afritek-dev"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/23"
  description = "CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.0.0/25", "10.0.0.128/25"]
  description = "CIDR block for Public Subnet"
}

variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.1.0/25", "10.0.1.128/25"]
  description = "CIDR block for Private Subnet"
}
