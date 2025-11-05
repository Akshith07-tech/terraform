variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0f5fcdfbd140e4ab7" # Ubuntu 22.04 us-east-2
}

variable "ec2_root_storage_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 15
}
