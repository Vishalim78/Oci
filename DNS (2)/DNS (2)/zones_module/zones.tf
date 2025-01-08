resource "oci_dns_zone" "zone" {
    compartment_id = var.compartment_ocid
    name           = var.zone_name
    zone_type      = var.zone_zone_type
    defined_tags   = var.definedTags   
    freeform_tags  = var.freeformTags
    scope          = var.zone_scope
    view_id        = var.views_ocid
}
