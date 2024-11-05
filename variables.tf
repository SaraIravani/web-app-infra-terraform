variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "ca-central-1"
}
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "The VPC ID where the resources will be created"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "The CIDR allowed for SSH access"
  type        = string
  default     = "0.0.0.0/0"
}


