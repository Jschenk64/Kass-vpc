# Create a target group for public instances
resource "aws_lb_target_group" "cra_3_tg" {
  name        = "cra-3-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.cra_3_vpc.id
  target_type = "instance"

  health_check {
    interval            = 30
    path                = "/"
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200"
  }

  tags = {
    Name = "CRA-3-TG"
  }
}

# Register public instances in the target group
resource "aws_lb_target_group_attachment" "cra_3_attach_w155" {
  target_group_arn = aws_lb_target_group.cra_3_tg.arn
  target_id        = aws_instance.cra-W155.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "cra_3_attach_w156" {
  target_group_arn = aws_lb_target_group.cra_3_tg.arn
  target_id        = aws_instance.cra-W156.id
  port             = 80
}

# Create an application load balancer
resource "aws_lb" "cra_3_alb" {
  name               = "cra-3-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.cra_3_sg.id]
  subnets            = [aws_subnet.cra_3_pub1.id, aws_subnet.cra_3_pub2.id]

  tags = {
    Name = "cra-3-load-balancer"
  }
}

# Create a listener for the load balancer
resource "aws_lb_listener" "cra_3_listener" {
  load_balancer_arn = aws_lb.cra_3_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.cra_3_tg.arn
  }
}
