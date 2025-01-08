resource "oci_dns_view" "view" {
    compartment_id   = var.compartment_ocid
    scope            = var.scope    
    display_name     = var.display_name
    defined_tags     = var.definedTags 
    freeform_tags    = var.freeformTags
}

