resource "oci_core_nat_gateway" "test_nat_gateway" {
  block_traffic   = var.natgw_block_traffic
  compartment_id  = var.compartment_ocid
  display_name    = var.natgw_display_name
  defined_tags    = var.project_tag.definedTags
  freeform_tags   = var.project_tag.freeformTags
  vcn_id          = var.vcn_ocid
}