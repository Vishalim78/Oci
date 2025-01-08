variable "region"{
    type = string
    default = ""
    description = "region for compute instance"
}

variable "compartment_ocid"{
    type = string
    default = ""
    description = "compartment id for compute instance"
}

variable "tenancy_ocid"{
    type = string
    default = ""
    description = "tenancy id for compute instance"
}

variable "project_tag"{
    type =map
    default ={
        defined_tags = {

        }
        freeform_tags = {}
    }
}

variable "instance_shape"{
    type = string
    default = "VM.Standard.E2.1.Micro"
    description = "shape of instance"
}

variable "instance_availability_domain"{
    type = string
    default = ""
    description = "availability domain for compute instance"
}

variable "instance_display_name"{
    type = string
    default = "demo_instance"
    description = "display name for compute instance"
}

variable "subnet_id"{
    type= string
    default = ""
    description = "subnet id for compute instance"
}
variable "source_id"{
    type = string
    default = ""
    description ="image id for compute instance"
}
