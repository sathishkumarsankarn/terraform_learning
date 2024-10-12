data "aws_ami" "amzlinx" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}



resource "aws_instance" "webserver" {
  ami = data.aws_ami.amzlinx.id
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
  provisioner "remote-exec" {
    inline = [ "sudo apt update",
                "sudo apt install nginx -y",
                "systemctl enable nginx",
                "systemctl start nginx"
            ]
  }
  provisioner "local-exec" { #create time local provisioner - after resource is created, then provisioner is executed.
    command = "echo ${aws_instance.webserver.public_ip} >> ip.txt"
  }
  provisioner "local-exec" { #destroy time local provisioner
    when = destroy
    on_failure = fail or continue
    command = "echo ${aws_instance.webserver.public_ip} >> ip.txt"

  }
  connection {
    type = "ssh"
    host = self.public_ip
    user = "ubuntu"
    private_key = file("/root/.ssh/web")
  }
  key_name = aws_key_pair.web.id
  vpc_security_group_ids = [ aws_security_group.ssh-access.id ]
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
  
