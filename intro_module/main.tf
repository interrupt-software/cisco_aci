terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}

/* Configure the provider with your Cisco APIC credentials for 
- APIC Username
-  APIC Password
- APIC URL
*/
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

# ACI Tenant Network Resources
# Define an ACI Tenant VRF Resource.
resource "aci_vrf" "terraform_vrf" {
  tenant_dn   = aci_tenant.terraform_tenant.id
  description = "VRF Created Using Terraform"
  name        = var.vrf
}

# Define an ACI Tenant BD Resource.
resource "aci_bridge_domain" "terraform_bd" {
  tenant_dn          = aci_tenant.terraform_tenant.id
  relation_fv_rs_ctx = aci_vrf.terraform_vrf.id
  description        = "BD Created Using Terraform"
  name               = var.bd
}

# Define an ACI Tenant BD Subnet Resource.
resource "aci_subnet" "terraform_bd_subnet" {
  parent_dn   = aci_bridge_domain.terraform_bd.id
  description = "Subnet Created Using Terraform"
  ip          = var.subnet
}
