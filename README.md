# vmwAviControllerFromContentLibrary

## Goals
Spin up n avi Controller in vcenter based on local content library

## Prerequisites:
- TF is installed
- vcenter API reachable
- VMware credentials configure as environment variables:
```
TF_VAR_vsphere_user=******
TF_VAR_vsphere_server=******
TF_VAR_vsphere_password=******
```
- OVAs populated (controller-<avi-version>.ova) in the content library whose name is defined in var.controller.content_library_name

## Environment:

TF plan has been tested against:

### terraform

```
Terraform v0.13.5
+ provider registry.terraform.io/hashicorp/vsphere v1.24.2
```

### Avi version
```
Avi 20.1.1 with one controller node or three controller nodes
```

### V-center version:
- VMware (V-center 6.7.0, ESXi, 6.7.0, 15160138)
- local content library

## Input/Parameters:
- All variables stored in variables.tf

## Use the TF plan to:
- Create a new folder within v-center
- Spin up n (n is determined by the length of var.controller.mgmt_up) Avi Controller:
    * in the network name called var.controller.network
    * based on fixed IP addresses (var.controller.mgmt_ip)
- Display the IPs addresses of the controller

## Run the terraform:
- to apply the plan
```
cd ~ ; git clone https://github.com/tacobayle/vmwAviControllerFromContentLibrary ; cd vmwAviControllerFromContentLibrary ; terraform init ; terraform apply -auto-approve``
```
- to destroy the plan
```
terraform destroy -auto-approve
```
