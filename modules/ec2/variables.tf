variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "public_subnet_id" {
  description = "The ID of the public subnet where the EC2 instance will be created"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID to attach to the EC2 instance"
  type        = string
}

