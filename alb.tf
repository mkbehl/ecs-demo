######################## ELB Configuration ######################################

resource "aws_lb" "web_alb" {
  name = var.lb_name
  internal = var.lb_internal_type
  load_balancer_type = var.lb_loadbalancer_type
  security_groups = var.lb_sec_group
  subnets = var.subnets
  enable_deletion_protection = var.lb_protection
  ip_address_type = var.ip_address_type
  tags = {
    Environment = var.lb_tag_name
  }
}
######################## ALB - Target Group Configuration #######################
resource "aws_lb_target_group" "target_group" {
  name = var.lb_target_group_name
  port = var.lb_target_type_instance_port
  protocol = var.lb_protocol
  vpc_id = var.existing_vpc_id
  // target_type = "var.alb_target_group_type" ///"If Target type is IP. Instance for default and no parameter required to set."
}

######################## ELB - LB Listener Configuration ########################

resource "aws_lb_listener" "web_listener" {
  load_balancer_arn = aws_lb.web_alb.arn
  port = var.lb_listerner_port
  protocol = var.lb_listener_protocol
  //ssl_policy        = var.lb_listener_ssl_policy
  //certificate_arn   = var.lb_listener_certificate_arn
  default_action {
    type = var.lb_listener_default_action_type
    target_group_arn = aws_lb_target_group.target_group.arn
  }
}