variable "vpc_cidr_block" {
  default = "10.1.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24", "10.1.4.0/24"]
}

variable "private_subnet_cidrs" {
  default = ["10.1.5.0/24", "10.1.6.0/24"]
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
}

variable "env_name" {
  default = "dev"
}
