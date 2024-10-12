terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
      version = "!= 2.4.0" #example
      version = "< 2.4.0" #example
      version = "> 2.4.0" #example
      version = "~> 2.0.0" #example
      version = "~> 2.4" #example
      version "> 1.2.0, < 2.3.0, != 1.4.0" #example
    }
  }
}

resource "local_file" "pet" {
  filename = "/roo/pet.txt"
  content = "Pets are good for Life"
}
