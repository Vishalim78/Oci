###  Application LB  ###

### Creates a application load balancer ####

resource oci_load_balancer_load_balancer app_lb {
  compartment_id                 = var.compartment_ocid
  display_name                   = var.display_name
  is_private                     = var.is_private
  shape                          = var.lb_shape
  subnet_ids                     = [ var.subnet_ocid, ]
  shape_details {
    maximum_bandwidth_in_mbps    = var.maximum_bandwidth_in_mbps
    minimum_bandwidth_in_mbps    = var.minimum_bandwidth_in_mbps
  }
  defined_tags                   = var.definedTags
  freeform_tags                  = var.freeformTags
}
