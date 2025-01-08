# ----------------------------------------
# Common Variables
# ----------------------------------------

variable compartment_ocid {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

# ----------------------------------------
# Subnet Variables
# ----------------------------------------
variable "vcn_ocid" {}

variable "private_vcn_subnet_display_name" {}

variable "private_vcn_subnet_dns_label" {}

variable "private_vcn_subnet_cidr_block" {}

variable "pri_security_list_ocid" {}

variable "pri_route_table_ocid" {}



