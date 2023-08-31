resource "local_file" "pet" {
  filename = each.value
  for_each = var.filename
  #for_each = toset(var.filename) #if we use list below variable section
}

variable "filename" {
  default = [
    "/root/pet.txt",
    "/root/dog.txt",
    "/root/cat.txt"
  ]
  type = set(string)
  #type = list(string) 
}
