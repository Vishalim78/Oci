module "oci_objectstorage_bucket" {  
    source                          = "./bucket" 
    compartment_ocid            = var.compartment_ocid
    region                      = var.region
    tenancy_ocid                = var.tenancy_ocid
    bucket_name                 = var.bucket_name
    # namespace            = data.oci_objectstorage_namespace.export_namespace.namespace
    # namespace = var.bucket_namespace
    bucket_access_type          = var.bucket_access_type
    bucket_auto_tiering         = var.bucket_auto_tiering
    bucket_object_event_enabled = var.bucket_object_event_enabled
    bucket_storage_tier         = var.bucket_storage_tier
    bucket_versioning           = var.bucket_versioning
    project_tag                 = var.project_tag
 }

### END