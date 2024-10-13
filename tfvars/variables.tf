variable "instances" {
  type = map
}

variable "domain_name" {
  default = "laven.cloud"
}

variable "zone_id" {
  default = "Z0920258HFVLFKHGIGVT"
}

variable "common_tags" {
  default = {
    project = "expense"
    Terraform = "true"
  }
}

variable "tags" {
  type = map
}

variable "environment" {
}

variable "expense" {
  default = "expense"
}