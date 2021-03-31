variable "username" {}
variable "password" {}
variable "apic_url" {}

variable "tenant" {
  type    = string
  default = "interrupt-demo"
}

variable "description" {
  type    = string
  default = "Workshop Demo on Thu Mar 31, 2021"
}

# # 2
# variable "vrf" {
#   type    = string
#   default = "prod_vrf"
# }
# variable "bd" {
#   type    = string
#   default = "prod_bd"
# }
# variable "subnet" {
#   type    = string
#   default = "10.10.101.1/24"
# }

# # 3

# variable "filters" {
#   description = "Create filters with these names and ports"
#   type        = map(any)
#   default = {
#     filter_https = {
#       filter   = "https",
#       entry    = "https",
#       protocol = "tcp",
#       port     = "443"
#     },
#     filter_sql = {
#       filter   = "sql",
#       entry    = "sql",
#       protocol = "tcp",
#       port     = "1433"
#     }
#   }
# }
# variable "contracts" {
#   description = "Create contracts with these filters"
#   type        = map(any)
#   default = {
#     contract_web = {
#       contract = "web",
#       subject  = "https",
#       filter   = "filter_https"
#     },
#     contract_sql = {
#       contract = "sql",
#       subject  = "sql",
#       filter   = "filter_sql"
#     }
#   }
# }

# # 4 

# variable "ap" {
#   description = "Create application profile"
#   type        = string
#   default     = "intranet"
# }
# variable "epgs" {
#   description = "Create epg"
#   type        = map(any)
#   default = {
#     web_epg = {
#       epg   = "web",
#       bd    = "prod_bd",
#       encap = "21"
#     },
#     db_epg = {
#       epg   = "db",
#       bd    = "prod_bd",
#       encap = "22"
#     }
#   }
# }
# variable "epg_contracts" {
#   description = "epg contracts"
#   type        = map(any)
#   default = {
#     terraform_one = {
#       epg           = "web_epg",
#       contract      = "contract_web",
#       contract_type = "provider"
#     },
#     terraform_two = {
#       epg           = "web_epg",
#       contract      = "contract_sql",
#       contract_type = "consumer"
#     },
#     terraform_three = {
#       epg           = "db_epg",
#       contract      = "contract_sql",
#       contract_type = "provider"
#     }
#   }
# }
