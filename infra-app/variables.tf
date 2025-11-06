variable "env" {
    description = "This is the environment for my infra"
    type = string
  
}

variable "bucket_name" {
    description = "This is the bucket name for my infra"
    type = string
  
}


variable "instance_count" {
    description = "This is the number of ec2 instance for my infra"
    type = number
  
}


variable "instance_type" {
    description = "This is the instance type for my EC2 infra"
    type = string
  
}

variable "ec2_ami_id" {
    description = "This is the instance ami id  for my EC2 infra"
    type = string
  
}

variable "hash_key" {
    description = "This is the hash key  for my dynamodb infra"
    type = string
  
}

