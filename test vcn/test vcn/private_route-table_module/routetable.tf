
resource oci_core_route_table private_routetable {
  compartment_id      = var.compartment_ocid
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
  display_name        = var.pri_route_table_display_name
  vcn_id              = var.vcn_ocid

  dynamic "route_rules" {
    for_each          = var.route_rules
    content {
      network_entity_id = route_rules.value.network_entity_id
      destination       = route_rules.value.destination
      destination_type  = route_rules.value.destination_type
    }
  }
}
