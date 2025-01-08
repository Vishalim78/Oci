#####################
## Common Variables
#####################
variable tenancy_ocid {
    type        = string
    default     = "ocid1.tenancy.oc1..aaaaaaaaixdndclpk6ks2so5vdaca4q5efbz2rfxwlmy3djqlb46f6qo7xla"
    description = "Tenancy OCID"
}
variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "Compartment name to deploy DNS"
}
variable region {
    type        = string
    default     = "us-ashburn-1"
    description = "Region"
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {}
      freeformTags = {}
  }
}
###################################
## DNS Private Views  Variables
###################################
variable "scope" {
    type        = string
    default     = "PRIVATE"
    description = "Select the Private View Scope as PRIVATE"
}
variable "display_name" {
    type        = string
    default     = "oci.test"
    description = "The display name of the private view."
}
########################
## DNS Zones Variables
########################
variable "zone_name" {
    type        = string
    default     = "oci.test"
    description = "The name of the zone."
}
variable "zone_type" {
    type        = string
    default     = "PRIMARY"
    description = "The type of the zone. Must be either PRIMARY or SECONDARY."
}
variable "zone_scope" {
    type        = string
    default     = "PRIVATE"
    description = "This value will be PRIVATE for zones when creating a private zone."
}
variable "view_ocid" {
    type        = string
    default     = ""
    description = "the ocid of the view."
}