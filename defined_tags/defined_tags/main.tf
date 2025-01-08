# ----------------------------------------
#  TagNamespace Module
# ----------------------------------------

module "tags" {
    source               = "./tag_namespace_module"
    tenancy_ocid         = var.tenancy_ocid
    compartment_ocid  	 = var.compartment_ocid
    region               = var.region
    tag_namespace_description    = var.tag_namespace_description
    tag_namespace_name	 = var.tag_namespace_name
}

# ----------------------------------------
# CostCenter Tags Module
# ----------------------------------------

module "CostCenter_tags" {
    source            		= "./tags_module"
    tenancy_ocid      		= var.tenancy_ocid
    compartment_ocid     	= var.compartment_ocid
    region            		= var.region
    tag_description  		= var.CostCenter_tag_description
    tag_name          		= var.CostCenter_tag_name
    tag_is_cost_tracking  	= var.CostCenter_is_cost_tracking
    tag_namespace_ocid   	= module.tags.tag_namespace_ocid
}

# ----------------------------------------
# ResourceType Tags Module
# ----------------------------------------

module "ResourceType_tags" {
    source            		= "./tags_module"
    tenancy_ocid      		= var.tenancy_ocid
    compartment_ocid  	    = var.compartment_ocid
    region            		= var.region
    tag_description   		= var.ResourceType_tag_description
    tag_name          		= var.ResourceType_tag_name
    tag_is_cost_tracking  	= var.ResourceType_is_cost_tracking
    tag_namespace_ocid   	= module.tags.tag_namespace_ocid
}

