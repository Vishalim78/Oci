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
# Service Gateway Variables
# ----------------------------------------

variable "vcn_ocid" {}
variable "servicegw_display_name" {}