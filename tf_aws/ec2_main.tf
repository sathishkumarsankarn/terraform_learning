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
}


resource "aws_key_pair" "web" {
  public_key = file("/root/.ssh/web.pub")
}
