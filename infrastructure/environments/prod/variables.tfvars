aws_region           = "ap-southeast-2"
environment          = "production"
vpc_cidr             = "10.3.0.0/23"
private_subnets_cidr = ["10.3.0.0/25", "10.3.0.128/25"]
public_subnets_cidr  = ["10.3.1.128/26", "10.3.1.192/26"]
S3bucket             = "prod-tf-flow-logs"

