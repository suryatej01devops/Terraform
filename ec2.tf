resource "aws_instance" "example" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = "terrafrom"
  }
}

resource "aws_security_group" "allow_all" {
  name = "allow-all"
  
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"   # All protocols
    cidr_blocks = ["0.0.0.0/0"] # Open to the internet
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"   # All protocols
    cidr_blocks = ["0.0.0.0/0"] # Open to the internet
  }

  tags = {
    Name = "allow-all"
  }
}