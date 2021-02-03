module "vpc" {
    source = "../../modules/vpc" 

    vpc_cidr_block             = var.vpc_cidr_block
    enable_dns_hostnames       = true
    enable_dns_support         = true
    vpc_tags                   = {
        Name  = var.name
        Owner = var.owner
    }

    igw_tags                   = {
        Name  = var.name
        Owner = var.owner
    }

    pub_one_subnet_cidr_block  = var.pub_one_subnet_cidr_block
    pub_one_subnet_az          = "us-east-1e"
    pub_one_subnet_tags        = {
        Name  = var.name
        Owner = var.owner
    }

    pub_two_subnet_cidr_block = var.pub_two_subnet_cidr_block
    pub_two_subnet_az         = "us-east-1a"
    pub_two_subnet_tags       = {
        Name  = var.name
        Owner = var.owner
    }

    public_subnet_route_table_tags = {
        Name  = var.name
        Owner = var.owner
    }
}    