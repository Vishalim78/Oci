variable "compartment_ocid"{}

variable "project_tag"{
    type =map
    default ={
        defined_tags = {

        }
        freeform_tags = {}
    }
}


variable "instance_availability_domain"{}

variable "instance_shape"{}

variable "instance_display_name"{}

variable "subnet_id"{}

variable "source_id"{}

