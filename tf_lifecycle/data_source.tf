resource "local_file" "hi" {
  filename = var.filename
  content = random_string.hello.id
}

resource "random_string" "hello" {
  length = var.length
  lifecycle {
    create_before_destory = true
  }
}

data "local_file" "god" {
  filename = "/root/god.txt"
}
