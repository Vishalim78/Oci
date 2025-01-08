data "oci_objectstorage_namespace" "export_namespace" {
  compartment_id = var.compartment_ocid
}

resource "oci_objectstorage_bucket" "object_bucket"{
  name                 = var.bucket_name
  compartment_id       = var.compartment_ocid 
  namespace            = var.namespace
  # namespace            = data.oci_objectstorage_namespace.this.namespace
  access_type          = var.bucket_access_type
  auto_tiering         = var.bucket_auto_tiering
  defined_tags          = var.project_tag.definedTags
  freeform_tags         = var.project_tag.freeformTags
  object_events_enabled= var.bucket_object_event_enabled
  storage_tier         = var.bucket_storage_tier
  versioning           = var.bucket_versioning
}

### END