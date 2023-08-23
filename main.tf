resource "local_file" "hello" {
  filename = "/root/hello.txt"
  content = "This is my first terraform script"
}
