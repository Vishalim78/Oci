
 variable region {
   type        = string
   description = "Enter Region"  
 	default     = "ap-mumbai-1"  
 }

 variable tenancy_ocid { 
   type        = string
   description = "Enter Tenancy OCID"  
 	default     = ""
 }

variable compartment_ocid { 
  type        = string
  description = "Choose the Compartment where to deploy the resources"  
	default     = ""
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = { "generic.label" = "persistent"}
      # freeformTags = { }
  }
}

##########################################
#  bucket Configuration Variables
###########################################

variable bucket_name { 
  type        = string
  description = "name of the bucket"  
	default     = "bucket"
}

variable "namespace" {
  type        = string
  description = "Object Storage namespace"  
	default     = ""
}

variable "bucket_access_type"{
  type        = string
  description = "type of public access enabled"  
  default     = "NoPublicAccess"
 }

variable "bucket_auto_tiering" {
  type        = string
  description = "auto tiering status"  
  default     = "InfrequentAccess"
}

variable "bucket_object_event_enabled" {
  type        = bool
  description = "Specify whether to enable object event, if unchecked no object event created"
  default     = "false"
}

variable "bucket_storage_tier" {
  type        = string
  description = "type of storage tier of this bucket"  
  default     = "Standard" 
}

variable "bucket_versioning" {
  type        = string
  description = "versioning status on the bucket"  
	default     = "Enabled"
}


### END
