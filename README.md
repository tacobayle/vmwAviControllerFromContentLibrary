# terraformAviControllerVmw

## Goals
Spin up n avi Controller in v-center

## Prerequisites:
- Make sure terraform in installed in the orchestrator VM
- Make sure VMware credential/details are configured as environment variable:
```
TF_VAR_vsphere_user=******
TF_VAR_vsphere_server=******
TF_VAR_vsphere_password=******
```
- Make sure you have VM template file in V-center which follow this name controller-<avi-version>-template
```
controller-20.1.1-9071-template
```

## Environment:

Terraform plan has been tested against:

### terraform

```
Your version of Terraform is out of date! The latest version
is 0.13.4. You can update by downloading from https://www.terraform.io/downloads.html
Terraform v0.13.0
+ provider registry.terraform.io/hashicorp/vsphere v1.24.2
```

### Avi version
```
Avi 20.1.1 with one controller node or three controller nodes
```

### V-center version:
- VMware (V-center 6.7.0, ESXi, 6.7.0, 15160138)

## Input/Parameters:
- All the paramaters/variables are stored in variables.tf
- If you want to use static IP, uncomment the following in controller.tf:
```
#  vapp {
#    properties = {
#      "mgmt-ip"     = var.controller["mgmt_ip"]
#      "mgmt-mask"   = var.controller["mgmt_mask"]
#      "default-gw"  = var.controller["default_gw"]
#   }
#  }
```

## Use the the terraform script to:
- Create a new folder within v-center
- Spin up n Avi Controller in the network name called var.networkMgt

## Run the terraform:
- to apply the plan
```
cd ~ ; git clone https://github.com/tacobayle/terraformAviControllerVmw ; cd terraformAviControllerVmw ; terraform init ; terraform apply -auto-approve``
```
- to destroy the plan
```
terraform destroy -auto-approve
```
