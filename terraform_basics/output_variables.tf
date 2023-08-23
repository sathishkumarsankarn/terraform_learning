resource "local_file" "sample" {
  filename = var.filename
  content = "My Fav pet name is ${random_pet.mypet.id}"
}

resource "random_pet" "mypet" {
  prefix = var.prefix
  length = var.length
  separator = var.separator
}

output pet-name {
  value = random_pet.mypet.id
  description = "this is used to describe about this variable and its optional argument"
}
