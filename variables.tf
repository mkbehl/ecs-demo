variable "key_name" {}

variable "cluster_name" {}

##### EC2 Generic instance variables #####
variable "aws_region" {}
variable "ec2_image" {}  //make sure we use ecs optimzed ami which have ecs scheduler on it
variable "ec2_keypair" {}
variable "count_id" {}
variable "subnet_id" {}
variable "ec2_sec_group" {}
variable "instance_flavor_type" {}
variable "instance_tag" {}

##### ELB variables #####
variable "lb_name" {}
variable "lb_internal_type" {}
variable "lb_loadbalancer_type" {}
variable "lb_sec_group" {}
variable "subnets" {}
variable "lb_protection" {}
variable "ip_address_type" {}
variable "lb_tag_name" {}

##### ELB Target Group variables #####
variable "lb_target_group_interval" {}
variable "lb_target_group_path" {}
variable "lb_target_group_timeout" {}
variable "lb_target_group_healthy_threshold" {}
variable "lb_target_group_unhealthy_threshold" {}

variable "lb_target_group_name" {}
variable "lb_target_type_instance_port" {}
variable "lb_protocol" {}
variable "existing_vpc_id" {}
//variable "alb_target_group_type" {}

############ ELB Listener variables ################
variable "lb_listerner_port" {}
variable "lb_listener_protocol" {}
//variable "lb_listener_ssl_policy" {}
//variable "lb_listener_certificate_arn" {}
variable "lb_listener_default_action_type" {}

######################## LB Target Group Attachment variable ################

variable "lb_target_group_attachment_port" {}








