# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "tenancy_ocid" {
  type        = string
  description = "OCID of the tenancy"
  default     = "ocid1.tenancy.oc1..aaaaaaaaznz36hg3wd7rlk3vn7z5x6k6thjvj4xuenuvosgdvvpo5klwkefq"
}

variable "region" {
  type        = string
  description = "Region"
  default     = "ap-mumbai-1"
}

variable "compartment_ocid" {
  type        = string
  description = "The OCID of the compartment"
  default     = "ocid1.compartment.oc1..aaaaaaaarehlk7kct6dkqqtqcc4iik4mp3axcfwjlgbz4nfj2hznmi65qidq"
}

# ----------------------------------------
#  TagNamespace Variables
# ----------------------------------------

variable "tag_namespace_name" {
  type    = string
  default = "OIC_Automation_Tags"
  description = "Name of the defined tags"
}

variable "tag_namespace_description" {
  type    = string
  default = "Defined tags for OIC  Automation resources"
  description = "Defined tags description "
}

# ----------------------------------------
# CostCenter Tags Variables
# ----------------------------------------

variable "CostCenter_tag_name" {
  type    = string
  default = "CostCenter"
  description = "Name of the Tag Key Definition"
}

variable "CostCenter_tag_description"{
  type    = string
  default = "Cost Center"
  description = "Tag Key Definition description "
}

variable "CostCenter_is_cost_tracking"{
  type    = bool
  default = "true"
  description = "Is Cost Tracking true or false"
}

# ----------------------------------------
# ResourceType Tags Variables
# ----------------------------------------

variable "ResourceType_tag_name" {
  type    = string
  default = "ResourceType"
  description = "Name of the Tag Key Definition"
}

variable "ResourceType_tag_description"{
  type    = string
  default = "OCI Resource Type"
  description = "Tag Key Definition description "
}

variable "ResourceType_is_cost_tracking"{
  type    = bool
  default = "true"
  description = "Is Cost Tracking true or false"
}
