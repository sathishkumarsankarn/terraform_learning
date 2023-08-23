variable "filename" {
  default = "/root/variable_concept.txt"
}
variable "content" {
  default = "we have variable concept implemented in terraform, Good Job..!!!"
}

variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = list
}
variable "length" {
  default = 1
  type = number
}

variable "separator" {
  default = "."
  type = string
}

variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = list(string)
}

variable "length" {
  default = [1 , 3, 5, 6]
  type = list(number)
}

# set type wont allow duplicate values
variable "fruits" {
  default = ["apple", "banana"]
  type = set(string)
}
