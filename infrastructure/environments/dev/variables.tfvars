aws_region           = "ap-southeast-2"
environment          = "development"
vpc_cidr             = "10.0.0.0/23"
private_subnets_cidr = ["10.0.1.0/25", "10.0.1.128/25"]
public_subnets_cidr  = ["10.0.0.0/25", "10.0.0.128/25"]
S3bucket             = "dev-tf-flow-logs"

