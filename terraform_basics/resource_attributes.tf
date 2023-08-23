resource "local_file" "sample" {
  filename = var.filename
  content = "My Fav pet name is ${random_pet.mypet.id}" #This is resource attribute - passing one resource output as input to another resource
}

resource "random_pet" "mypet" {
  prefix = var.prefix
  length = var.length
  separator = var.separator
}
