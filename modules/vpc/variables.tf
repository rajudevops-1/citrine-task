variable "vpc_cidr_block" {
    description = "The Cidr Block for the VPC"
    type        = string
    default     = ""
}

variable "enable_dns_hostnames" {
    description = "Should be true to enable DNS hostnames in the VPC"
    type        = bool
    default     = true
}

variable "enable_dns_support" {
    description = "Should be true to enable DNS support in the VPC"
    type        = bool
    default     = true
}

variable "vpc_tags" {
    description = "Additional tags for the VPC"
    type        = map(string)
    default     = {} 
}

variable "igw_tags" {
    description = "Additional tags for the igw"
    type        = map(string)
    default     = {}
}

variable "pub_one_subnet_cidr_block" {
    description = "The Cidr Block for the Public Subnet one"
    type        = string
    default     = ""
}

variable "pub_two_subnet_cidr_block" {
    description = "The Cidr Block for the Public Subnet two"
    type        = string
    default     = ""
}

variable "pub_one_subnet_az" {
    description = "A list of availability zones names or ids in the region"
    type        = string
    default     = ""
}

variable "pub_two_subnet_az" {
    description = "A list of availability zones names or ids in the region"
    type        = string
    default     = ""
}

variable "pub_one_subnet_tags" {
    description = "Additional tags for the Public subnet One"
    type        = map(string)
    default     = {}
}

variable "pub_two_subnet_tags" {
    description = "Additional tags for the Public subnet two"
    type        = map(string)
    default     = {}
}

variable "public_subnet_route_table_tags" {
    description = "Additional tags for the Public subnet route table"
    type        = map(string)
    default     = {}
}
