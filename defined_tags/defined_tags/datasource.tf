data "oci_identity_compartments" "this" {
    compartment_id = var.tenancy_ocid
}

data "oci_identity_tenancy" "tenancy" {
tenancy_id = "${var.tenancy_ocid}"
}


