terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}

# Configure the provider with your Cisco APIC credentials for 
# APIC Username
# APIC Password
# APIC URL
provider "aci" {
  username = var.username
  password = var.password
  url      = var.apic_url
  insecure = true
}

# Define an ACI Tenant Resource.
resource "aci_tenant" "terraform_tenant" {
  name        = var.tenant
  description = var.description
}
