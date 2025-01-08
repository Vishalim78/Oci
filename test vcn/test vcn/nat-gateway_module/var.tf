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
# NAT Gateway Variables
# ----------------------------------------

variable "vcn_ocid" {}
variable "natgw_display_name" {}
variable "natgw_block_traffic" {}
