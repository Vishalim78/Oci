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
# Security List Variables
# ----------------------------------------

variable "vcn_ocid" {}
variable "private_security_list_display_name" {}

variable "private_source_security_rules" {}
variable "private_destination_security_rules" {}