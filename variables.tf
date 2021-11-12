variable "aws_region" {
  description = "Region into which to deploy the EC2 instance"
  default     = "us-east-1"
}

variable "linux_ami" {
  description = "Linux ami to use :: Should work with Redis Labs Sales Account"
  default     = "ami-038f1ca1bd58a5790"
}

variable "instance_type" {
  description = "(Optional) instance type to use. Default: t3.micro"
  default     = "t3.micro"
}

variable "ssh_key_name" {
  description = "name of ssh key to be added to instance"
}

variable "security_group_id" {
  description = "Id of the security group applied to the instance"
}

variable "subnet_id" {
  description = "(Optional) VPC Subnet ID to launch in"
  default     = ""
}

