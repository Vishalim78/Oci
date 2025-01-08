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
# Route Table Variables
# ----------------------------------------

variable "vcn_ocid" {}
variable "route_table_display_name" {}
variable "public_route_rules" {}