resource "local_file" "hi" {
  filename = var.filename
  content = data.local_file.god.content
}

resource "random_string" "hello" {
  length = var.length
  lifecycle {
    create_before_destory = true
  }
}

# god.txt file is not created by terraform but using data (datasource) we are getting the content of god.txt and use it in our terraform configuration
data "local_file" "god" {
  filename = "/root/god.txt"
}
