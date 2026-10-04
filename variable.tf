variable "aws_region" {
  type        = string
  description = "we used this region for this project "
}

variable "vpc_cidr" {
  type        = string
  description = "we used this VPC IP  for this project "
}

variable "subnets_cidrs" {
  type        = list(string)
  description = "we used this Subnets IP  for this project "
}

variable "availability_zones" {
  type        = list(string)
  description = "we used this AZ  for this project "
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "instance_profile" {
  type    = string
  default = "EC2_SSM_ACCESS"
}

variable "desired_capacity" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 2
}

variable "max_size" {
  type    = number
  default = 2
}

variable "health_grace_period" {
  type    = number
  default = 60
}