module "test_instance"{
    source                       = "./instance_module"
    compartment_ocid             = var.compartment_ocid
    instance_shape               = var.instance_shape
    instance_availability_domain = var.instance_availability_domain
    instance_display_name        = var.instance_display_name
    subnet_id                    = var.subnet_id
    source_id                    = var.source_id
}