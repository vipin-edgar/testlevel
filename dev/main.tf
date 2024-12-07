module "networking" {
  source              = "./modules/networking"
  vpc_cidr_block      = "10.1.0.0/16"
  public_subnet_cidrs = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24", "10.1.4.0/24"]
  private_subnet_cidrs = ["10.1.5.0/24", "10.1.6.0/24"]
  availability_zones  = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
  env_name            = "dev"
}
module "security_groups" {
  source              = "./modules/security_groups"
  vpc_id              = module.networking.vpc_id
  env_name            = var.env_name
  bastion_private_ip  = "0.0.0.0/0" # Placeholder; update after Bastion is created
}

module "compute" {
  source             = "./modules/compute"
  ami_id             = "ami-0453ec754f44f9a4a" # Replace with a valid AMI ID
  instance_type      = "t2.micro"
  subnet_id          = module.networking.public_subnet_ids[1] # Public Subnet 2 in AZ2
  security_group_id  = module.security_groups.public_sg_id
  key_name           = "customKey" # Name of your custom key
 # user_data           =file("/home/ec2-user/environment/Test/dev/install_httpd.sh")
  env_name           = var.env_name
}
