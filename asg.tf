resource "aws_launch_configuration" "lc" {
   name = "test_ecs"
   image_id  = var.ec2_image
   instance_type = var.instance_flavor_type
   lifecycle {
    create_before_destroy = true
  }
    iam_instance_profile = aws_iam_instance_profile.ecs_service_role.name 
    key_name = var.ec2_keypair
     security_groups = var.ec2_sec_group
     user_data                   = <<EOF
        #! /bin/bash
        sudo apt-get update
        sudo echo "ECS_CLUSTER=${var.cluster_name}" >> /etc/ecs/ecs.config
        EOF
}

resource "aws_autoscaling_group" "asg" {
    name  = "test-asg"
    launch_configuration = aws_launch_configuration.lc.name
    min_size = 3
    max_size = 4
    desired_capacity = 3
    health_check_type = "ELB"
    health_check_grace_period = 300
    subnet_id = var.subnet_id

    target_group_arns     = [aws_lb_target_group.lb_target_group.arn]
    protect_from_scale_in = true
    lifecycle {
    create_before_destroy = true
   }
}
