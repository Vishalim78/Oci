resource "oci_core_instance" "test_instance" {
    availability_domain = var.instance_availability_domain
    compartment_id      = var.compartment_ocid
    shape               = var.instance_shape
    defined_tags        = var.project_tag.defined_tags
    freeform_tags       = var.project_tag.freeform_tags
    display_name        = var.instance_display_name
    create_vnic_details {
        subnet_id = var.subnet_id
    }
    source_details {
    source_type = "image"
    source_id   = var.source_id
  }
    
}