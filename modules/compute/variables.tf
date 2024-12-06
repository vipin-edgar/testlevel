variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the instance"
  type        = string
}

variable "key_name" {
  description = "Key name for SSH access"
  type        = string
}

variable "user_data" {
  description = "User data script to configure the instance"
  type        = string
  default     = null
}

variable "env_name" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
}
