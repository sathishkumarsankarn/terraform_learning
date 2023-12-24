locals {
  owner = "Hr Manager"
  name = "${var.deparment}-${var.environment}"
  comman_tags = {
    name = "${var.deparment}-${var.environment}"
  }
}