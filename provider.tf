provider "vsphere" {
  user           = var.vmc_vsphere_user
  password       = var.vmc_vsphere_password
  vsphere_server = var.vmc_vsphere_server
  allow_unverified_ssl = true
}
