variable "vpc_id" {
  description = "VPC ID where the security groups will be created"
  type        = string
}

variable "env_name" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "bastion_private_ip" {
  description = "Private IP of the Bastion Host (placeholder for now)"
  type        = string
  default     = "0.0.0.0/0" # Placeholder; replace with actual private IP after creating Bastion
}
