#
# Environment Variables
#
variable "vmc_vsphere_user" {}
variable "vmc_vsphere_password" {}
variable "vmc_vsphere_server" {}

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
  type = map
  default = {
    cpu = 8
    count = 1
    memory = 24768
    disk = 128
    version = "20.1.1-9071"
    wait_for_guest_net_timeout = 2
    content_library_name = "Avi Content Library"
    folder = "aviController"
    network = "sddc-cgw-network-1"
  }
}
