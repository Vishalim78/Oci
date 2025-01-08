resource "oci_identity_tag_namespace" "this_namespace" {
    compartment_id 		= var.compartment_ocid
    description 		= var.tag_namespace_description
    name 			    = var.tag_namespace_name
}

