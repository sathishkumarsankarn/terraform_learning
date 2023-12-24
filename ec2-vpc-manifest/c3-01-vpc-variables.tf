variable "vpc_name" {
    type = string
    default = "myvpc"
  
}

variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "pub_subnets" {
    type = list(string)
}

variable "pri_subnets" {
    type = list(string)
}

variable "db_subnets" {
    type = list(string)
}

variable "db_sub_group" {
    type = bool
    default = false
}

variable "nat_gtw" {
    type = bool
    default = false
  
}
variable "db_route_table" {
    type = bool
    default = true
}

variable "igtw" {
    type = bool
    default = false
}

variable "dns_host" {
    type = bool
    default = true
  
}

variable "dns_support" {
    type = bool
    default = true
}