## ALB
resource "aws_alb" "sys-eu-alb" {
  name            = "sys-db-eu-alb"
  internal        = true
  load_balancer_type = "application"
  subnets         = ["${aws_subnet.sys-private-1.id}", "${aws_subnet.sys-private-2.id}", "${aws_subnet.sys-private-3.id}"]
  security_groups = ["${aws_security_group.lb_sg.id}"]
}
 
resource "aws_alb_listener" "front_end" {
  load_balancer_arn = "${aws_alb.sys-eu-alb.id}"
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = "${aws_alb_target_group.db.id}"
  }
 
}
 
resource "aws_alb_target_group" "db" {
  name       = "db"
  port       = 80
  protocol   = "HTTP"
  vpc_id     = "${aws_vpc.sys-vpc-int.id}"
  depends_on = ["aws_alb.sys-eu-alb"]
 
  stickiness {
    type            = "lb_cookie"
    cookie_duration = 86400
  }
 
  health_check {
    path                = "/"
    healthy_threshold   = 2
    unhealthy_threshold = 10
    timeout             = 60
    interval            = 300
    matcher             = "200,301,302"
  }
}
