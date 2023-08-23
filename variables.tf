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
# set type wont allow duplicate values
variable "fruits" {
  default = [1, 2, 3, 5]
  type = set(number)
}

# list type allows duplicate values
variable "fruits" {
  default = ["apple", "banana", "apple"]
  type = list(string)
}

# map type stores information in key value pairs
variable "content" {
  type = map
  default = {
    "statement1" = "We have variable with map type"
    "statement2" = "we have learned successfully about map type variable declaration"
  }
}

variable "length" {
  type = map(number)
  default = {
    "dog" = 1
    "cat" = 2
  }
}

variable "content" {
  type = map(string)
  default = {
    "statement1" = "We have variable with map type"
    "statement2" = "we have learned successfully about map type variable declaration"
  }
}

# object variable type ---> VERY IMPORTANT

variable "bella" {
  type = object({
    name = string
    age = number
    food = list
    fav_pet = bool
  })
  default = {
    name = "bella"
    age = 10
    food = ["chicken", "fish", "turkey"]
    fav_pet = true
  }
}

# tuple variable type 

variable "kitty" {
  type = tuple([string, number, bool])
  default = ["cat", 1, true]
}


# Declaring variables without default values

variable "filename" {
}
# passing value in during run time like below -->
terraform apply -var "filename=/root/sample.txt"

export TF_VAR_filename="/root/pet.txt"

terraform.tfvars
filename = "/root/my-pet.txt"

variable.auto.tfvars
filename = "/root/fav-pet.txt"

terraform apply -var "filename=/root/best-pet.txt"
terraform apply -var-file variables.tfvars
