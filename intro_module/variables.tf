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

# 2
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

# 3

variable "filters" {
  description = "Create filters with these names and ports"
  type        = map(any)
  default = {
    filter_https = {
      filter   = "https",
      entry    = "https",
      protocol = "tcp",
      port     = "443"
    },
    filter_sql = {
      filter   = "sql",
      entry    = "sql",
      protocol = "tcp",
      port     = "1433"
    }
  }
}
variable "contracts" {
  description = "Create contracts with these filters"
  type        = map(any)
  default = {
    contract_web = {
      contract = "web",
      subject  = "https",
      filter   = "filter_https"
    },
    contract_sql = {
      contract = "sql",
      subject  = "sql",
      filter   = "filter_sql"
    }
  }
}
