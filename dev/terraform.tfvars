vpc_cidr_block       = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones   = ["us-east-1a", "us-east-1b"]
env_name             = "dev"
trusted_ips = ["99.209.173.182/32"] # Replace <your-public-ip> with your actual IP
ami_id = "ami-0453ec754f44f9a4a" # Replace with a valid AMI ID for your region
