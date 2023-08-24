resource "local_file" "sample" {
  filename = var.filename
  content = "My Fav pet name is Mr.Cat"
  depends_on = [
    random_pet.mypet
    ]
}

resource "random_pet" "mypet" {
  prefix = var.prefix
  length = var.length
  separator = var.separator
}
