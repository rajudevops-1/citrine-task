module "load_balancer" {
    source = "../../modules/loadbalancer"

    name               = var.name
    load_balancer_type = var.load_balancer_type
    vpc_id             = module.vpc.vpc_id
    security_groups    = [module.security_group.sg_id]
    subnets            = [module.vpc.pub_one_subnet_id, module.vpc.pub_two_subnet_id]

    lb_tags               = {
        Owner = var.owner 
    }   
}