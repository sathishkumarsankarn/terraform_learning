resource "local_file" "pet" {
  filename = var.filename[count.index]
  count = 3
  }

variable "filename" {
  default = [
    "/root/pets.txt",
    "/root/dogs.txt",
    "/root/cats.txt"
  ]
}  
