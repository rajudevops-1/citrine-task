resource "aws_lb" "lb" {
    name                       = var.name
    internal                   = var.internal
    load_balancer_type         = var.load_balancer_type
    security_groups            = var.security_groups
    subnets                    = var.subnets
    enable_deletion_protection = var.enable_deletion_protection
    tags                       = var.lb_tags
}

resource "aws_lb_target_group" "lb_tg" {
    name     = var.name
    port     = "80"
    protocol = "HTTP"
    vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "http" {
    load_balancer_arn = aws_lb.lb.arn 
    port              = "80"
    protocol          = "HTTP"
    
    default_action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.lb_tg.arn 
    }  
}