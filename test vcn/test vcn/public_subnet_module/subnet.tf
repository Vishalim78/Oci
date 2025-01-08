resource "oci_core_subnet" "public_subnet" {
  compartment_id             = var.compartment_ocid
  defined_tags               = var.project_tag.definedTags
  freeform_tags              = var.project_tag.freeformTags
  display_name               = var.public_vcn_subnet_display_name
  dns_label                  = var.public_vcn_subnet_dns_label
  cidr_block                 = var.public_vcn_subnet_cidr_block
  route_table_id             = var.route_table_ocid
  vcn_id                     = var.vcn_ocid
  security_list_ids          = [var.security_list_ocid]
}
