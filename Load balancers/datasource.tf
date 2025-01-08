data "oci_identity_compartments" "this" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.compartment_id_in_subtree
    name                         = var.compartment_name
}

data "oci_core_subnets" "this" {
    compartment_id     = local.compartment_ocid
	filter {
        name            = "display_name"
        values           = ["${var.subnet_display_name}"]
    }
}

	 

     