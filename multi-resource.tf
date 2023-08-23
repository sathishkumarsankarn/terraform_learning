resource "local_file" "xbox" {
  filename = "/root/xbox.txt"
  content = "We have xbox file ready to test multiple resource declaration in single file"
}

resource "random_pet" "my-pet" {
  prefix = "Mr"
  separator = "."
  length = "1"
}

(* with variable concept syntax below --> *)

resource "local_file" "variable_concept" {
  filename = var.filename
  content = var.content
}
