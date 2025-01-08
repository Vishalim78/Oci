resource "oci_identity_tag" "this_tag" {
    description 		= var.tag_description
    name 			    = var.tag_name
    tag_namespace_id 	= var.tag_namespace_ocid
    is_cost_tracking    = var.tag_is_cost_tracking
}