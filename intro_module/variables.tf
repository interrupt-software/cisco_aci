variable "username" {}
variable "password" {}
variable "apic_url" {}

variable "tenant" {
  type    = string
  default = "interrupt-demo"
}

variable "description" {
  type    = string
  default = "Workshop Demo on Thu Feb 11, 2021"
}

variable "vrf" {
  type    = string
  default = "prod_vrf"
}
variable "bd" {
  type    = string
  default = "prod_bd"
}
variable "subnet" {
  type    = string
  default = "10.10.101.1/24"
}
