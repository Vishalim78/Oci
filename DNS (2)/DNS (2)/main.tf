# Module for DNS Zone
module "zones" {
  source             = "./zones_module"
  compartment_ocid = var.compartment_ocid
  zone_name           = var.zone_name
  zone_zone_type      = var.zone_type
  zone_scope          =var.zone_scope 
  views_ocid          = module.privateview.views_ocid
  definedTags         = var.project_tag.definedTags
    freeformTags      = var.project_tag.freeformTags
}
    
 
#module for private view
module "privateview" {
   source         = "./dns_privateview_module"
   compartment_ocid        = var.compartment_ocid
   scope                   = var.scope    
   display_name            = var.display_name
   definedTags             = var.project_tag.definedTags
   freeformTags            = var.project_tag.freeformTags
}