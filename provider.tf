#terraform {
#  required_providers {
#    vsphere = "1.15.0"
#  }
#}
#
provider "vsphere" {
  user           = var.vmc_vsphere_user
  password       = var.vmc_vsphere_password
  vsphere_server = var.vmc_vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}
