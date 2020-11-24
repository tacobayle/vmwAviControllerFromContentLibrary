#
# Environment Variables
#
variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

#
# Other Variables
#

variable "vcenter" {
  type = map
  default = {
    dc = "sof2-01-vc08"
    cluster = "sof2-01-vc08c01"
    datastore = "sof2-01-vc08c01-vsan"
    resource_pool = "sof2-01-vc08c01/Resources"
  }
}

variable "controller" {
  default = {
    cpu = 8
    memory = 24768
    disk = 128
    version = "20.1.2-9171"
    wait_for_guest_net_timeout = 2
    content_library_name = "Avi Content Library"
    folder = "aviController"
    networks = ["sddc-cgw-network-1", "sddc-cgw-network-1", "sddc-cgw-network-1"]
    mgmt_ips = ["192.168.1.5", "192.168.1.6", "192.168.1.7"]
    mgmt_masks = ["255.255.255.0", "255.255.255.0", "255.255.255.0"]
    default_gws = ["192.168.1.1", "192.168.1.1", "192.168.1.1"]
  }
}