resource "aws_lb" "apispocc_alb" {
  #name               = var.alb_name
  internal           = false
  load_balancer_type = "application"

  security_groups = [var.security_group_id]
  subnets         = var.subnet_ids

  tags = {
    Name = var.alb_name
  }
}

resource "aws_lb_target_group" "apispocc_tg" {
  #name     = var.tg_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200-399"
  }

  tags = {
    Name = var.tg_name
  }
}

resource "aws_lb_target_group_attachment" "apispocc_attach1" {
  target_group_arn = aws_lb_target_group.apispocc_tg.arn
  target_id = var.instance_id
  port      = 80
}


resource "aws_lb_listener" "apispocc_listener" {
  load_balancer_arn = aws_lb.apispocc_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.apispocc_tg.arn
  }
}
