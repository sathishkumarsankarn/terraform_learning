resource "aws_instance" "webserver" {
  ami = "ami-0823687123765"
  instance_type = "t2.micro"
}
