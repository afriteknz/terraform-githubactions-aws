aws_region           = "ap-southeast-2"
environment          = "staging"
vpc_cidr             = "10.2.0.0/23"
private_subnets_cidr = ["10.2.0.128/25", "10.2.1.0/25"]
public_subnets_cidr  = ["10.2.1.128/26", "10.2.1.192/26"]
S3bucket             = "stage-tf-flow-logs"
 
