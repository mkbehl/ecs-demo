
################################### EC2 Generic instance values ###################################
aws_region                              = "us-west-2"
ec2_image                               = "ami-0d6c212c382525c87"
ec2_keypair                             = "terraform-automation-key"
count_id                                = "2"
subnet_id                               = "subnet-034d9b7614d37a227"
ec2_sec_group                           = ["sg-07b6a916e435cb9fb"]
instance_flavor_type                    = "t3.medium"
instance_tag                            = "ec2_terraform_test"

###################################  ELB values   ##################################################

lb_name                                 = "test-web-lb"
lb_internal_type                        = "true"
lb_loadbalancer_type                    = "application"
lb_sec_group                            = ["sg-07b6a916e435cb9fb"]
subnets                                 = ["subnet-034d9b7614d37a227", "subnet-04d318c9bea1d550f"]
lb_protection                           = "false"
ip_address_type                         = "ipv4"
lb_tag_name                             = "alb_terraform_test"

###################################  ALB Target Group values #######################################
lb_target_group_interval                = "10"
lb_target_group_path                    = "/"
lb_target_group_timeout                 = "5"
lb_target_group_healthy_threshold       = "5"
lb_target_group_unhealthy_threshold     = "2"

lb_target_group_name                    = "tf-example-lb-tg"
lb_target_type_instance_port            = "8080"
lb_protocol                             = "HTTP"
existing_vpc_id                         = "vpc-02c3902f6e40342eb"
//alb_target_group_type                 = "ip"  // "ip" or "instance" by default


###################################  ELB Listener variables ##########################################
lb_listerner_port                       = "80"
lb_listener_protocol                    = "HTTP"
//lb_listener_ssl_policy                = "ELBSecurityPolicy-2016-08"
//lb_listener_certificate_arn           = "arn:aws:iam::1234567890:server-certificate/test_cert_wanodnownofndonwofjwi299"
lb_listener_default_action_type         = "forward"
lb_target_group_attachment_port         = "8080"




