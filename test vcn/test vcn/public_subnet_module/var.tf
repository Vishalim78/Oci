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

variable "public_vcn_subnet_display_name" {}

variable "public_vcn_subnet_dns_label" {}

variable "public_vcn_subnet_cidr_block" {}

variable "route_table_ocid" {}

variable "security_list_ocid"{}



