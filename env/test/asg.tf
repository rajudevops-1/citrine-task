module "auto_scaling_group" { 
    source = "../../modules/autoscaling"
    
    name                   = var.name 
    ami                    = var.ami
    instance_type          = var.instance_type
    vpc_security_group_ids = [module.security_group.sg_id]
    
    lt_tags = {
        Name  = var.name
        Owner = var.owner
    }

    desired_capacity      = var.desired_capacity
    max_size              = var.max_size
    min_size              = var.min_size
    vpc_zone_identifier   = [module.vpc.pub_one_subnet_id, module.vpc.pub_two_subnet_id]
    target_group_arns     = [module.load_balancer.tg_arn]
}