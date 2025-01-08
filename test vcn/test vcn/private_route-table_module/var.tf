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
variable "pri_route_table_display_name" {}
variable "route_rules" {}