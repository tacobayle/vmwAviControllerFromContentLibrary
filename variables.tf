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
    dc = "SDDC-Datacenter"
    cluster = "Cluster-1"
    datastore = "WorkloadDatastore"
    resource_pool = "Cluster-1/Resources"
  }
}

variable "controller" {
  default = {
    cpu = 8
    memory = 24768
    disk = 128
    version = "20.1.1-9071"
    wait_for_guest_net_timeout = 2
    content_library_name = "Avi Content Library"
    folder = "aviController"
    network = "sddc-cgw-network-1"
    mgmt_ip = ["192.168.1.5", "192.168.1.6", "192.168.1.7"]
    mgmt_mask = "255.255.255.0"
    default_gw = "192.168.1.1"
  }
}