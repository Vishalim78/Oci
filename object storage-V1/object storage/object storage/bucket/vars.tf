variable "tenancy_ocid" {}
variable "region" {}
variable compartment_ocid {}
variable "project_tag" {
    type = map
    default =  {
        definedTags = {}
        freeformTags = {}
    }
}
variable "bucket_name" {}
#  variable "namespace" {}
variable "bucket_access_type" {}
variable "bucket_auto_tiering" {}
variable "bucket_object_event_enabled" {}
variable "bucket_storage_tier" {}
variable "bucket_versioning" {}


### END
