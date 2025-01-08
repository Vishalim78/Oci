variable "compartment_ocid" {}
variable "display_name" {}
variable "is_private" {}
variable "lb_shape"{}
variable "subnet_ocid" {}
variable "minimum_bandwidth_in_mbps" {}
variable "maximum_bandwidth_in_mbps" {}
variable "definedTags" {
  type = map
  default = {}
}
variable "freeformTags" {
  type = map
  default = {}
}