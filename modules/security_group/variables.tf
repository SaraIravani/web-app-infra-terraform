variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "The CIDR block allowed for SSH access"
  type        = string
  default     = "0.0.0.0/0"  # Change this to a specific IP or range for security
}

