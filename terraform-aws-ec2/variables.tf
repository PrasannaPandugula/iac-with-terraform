variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  description = "Amazon Linux 2 AMI"
  default     = "ami-0c55b159cbfafXXX" 
}

variable "key_name" {
  description = "Your AWS key pair name"
  default     = "launch ec2"  
}
