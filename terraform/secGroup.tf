resource "aws_security_group" "ExerciseMainRules" {
  name   = "Exercise-sg-main-rules"
  vpc_id = aws_vpc.ExerciseVpc.id

  ingress {
    description = "Exercise SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ExerciseIP]
  }

  ingress {
    description = "Exercise HTTPS access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.ExerciseIP]
  }

  ingress {
    description = "Exercise HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.ExerciseIP]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Exercise | Security group"
  }
}