module "security_group" {
    source = "../../modules/securitygroup"

    sg_name        = var.lb_sg_name
    sg_description = var.lb_sg_description
    vpc_id         = module.vpc.vpc_id
    
    sg_cidr_block  = var.lb_sg_cidr_block

    sg_tags     = {
    Name  = var.name
    Owner = var.owner
    }
}