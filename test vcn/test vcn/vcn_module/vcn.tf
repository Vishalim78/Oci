resource "oci_core_vcn" "test_vcn"{
  cidr_block       = var.vcn_cidr_block
  compartment_id    = var.compartment_ocid
  defined_tags      = var.project_tag.definedTags
  freeform_tags     = var.project_tag.freeformTags
  display_name      = var.vcn_display_name
  dns_label         = var.vcn_dns_label
  
}