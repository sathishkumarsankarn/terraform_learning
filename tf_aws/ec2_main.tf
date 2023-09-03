resource "aws_instance" "webserver" {
  ami = "ami-0823687123765"
  instance_type = "t2.micro"
  tags = {
    Name = "webserver instances"
    description = "It is having Nginx Webserver"
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install nginx -y
              systemctl enable nginx
              systemctl start nginx
              EOF
  key_name = aws_key_pair.web.id
}


resource "aws_key_pair" "web" {
  public_key = file("/root/.ssh/web.pub")
}

resource "aws_security_group" "ssh-access" {
  name = "ssh-access"
  description = "To connect EC2 Instances via SSH"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0./0"]
  }
}
  
