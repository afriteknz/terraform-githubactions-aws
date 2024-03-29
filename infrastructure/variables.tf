variable "aws_region" {
  default = "ap-southeast-2"
}

variable "environment" {
  default = "javatodev"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/23"
  description = "CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.0.0/25", "10.0.128.0/25"]
  description = "CIDR block for Public Subnet"
}

variable "private_subnets_cidr" {
  type        = list(any)
  default     = ["10.0.16.0/25", "10.0.144.0/25"]
  description = "CIDR block for Private Subnet"
}
