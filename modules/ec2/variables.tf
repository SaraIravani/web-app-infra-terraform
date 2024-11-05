variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  description = "The security group ID to associate with the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID in which to launch the EC2 instance"
  type        = string
}

