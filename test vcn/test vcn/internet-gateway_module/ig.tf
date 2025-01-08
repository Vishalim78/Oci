resource "oci_core_internet_gateway" "test_internet_gateway" {
    compartment_id      = var.compartment_ocid
    vcn_id              = var.vcn_ocid
    defined_tags        = var.project_tag.definedTags
    freeform_tags       = var.project_tag.freeformTags
    display_name        = var.internetgw_display_name
}