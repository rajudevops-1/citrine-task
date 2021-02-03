variable "profile" {
    type    = string
    default = "raj"  
}
variable "region" {
    type    = string
    default = "us-east-1"
}

variable "name" {
    description = "Name to prefix with all resuorces created in this environment"
    type        = string
    default     = "Citrine-sample-app"
}

variable "owner" {
    description = "Owner for all resuorces created in this environment"
    type        = string
    default     = "Ak"
}

variable "vpc_cidr_block" {
    description = "The Cidr Block for the VPC"
    type        = string
    default     = "10.10.0.0/16"
}

variable "pub_one_subnet_cidr_block" {
    description = "The Cidr Block for the Public Subnet one"
    type        = string
    default     = "10.10.0.0/17"
}

variable "pub_two_subnet_cidr_block" {
    description = "The Cidr Block for the Public Subnet two"
    type        = string
    default     = "10.10.128.0/17"
}

variable "lb_sg_name" {
    description = "Name for lb sg"
    type        = string
    default     = "lb_sg"
}

variable "lb_sg_description" {
    description = "lb sg  description"
    type        = string
    default     = "sg for lb"
}

variable "lb_sg_cidr_block" {
    description = "The Cidr Block for the lb sg"
    type        = list(string)
    default     = ["0.0.0.0/0"]
}

variable "load_balancer_type" {
    description = "The load balancer type"
    type        = string
    default     = "application"
}

variable "ami" {
    description = "ID of AMI to use for the instance"
    type        = string
    default     = "ami-06c878e14b8755eb0"
}

variable "instance_type" {
    description = "The type of instance to start"
    type        = string
    default     = "t2.micro"
}

variable "desired_capacity" {
  description = "Desired capacity for ASG"
  type        = string
  default     = "1"
}

variable "min_size" {
  description = "min size for ASG"
  type        = string
  default     = "1"
}

variable "max_size" {
  description = "max size for ASG"
  type        = string
  default     = "3"
}