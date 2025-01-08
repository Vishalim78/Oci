# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "tenancy_ocid" {
  description  = "Target tenancy OCID"
  type         = string
  default      = "ocid1.tenancy.oc1..aaaaaaaaznz36hg3wd7rlk3vn7z5x6k6thjvj4xuenuvosgdvvpo5klwkefq"
}

variable "compartment_ocid" {
    type        = string
    default     = "ocid1.compartment.oc1..aaaaaaaarehlk7kct6dkqqtqcc4iik4mp3axcfwjlgbz4nfj2hznmi65qidq"
    description = "Compartment ID "
}

variable "region" {
  type        = string
  description = "Region"
  default     = "ap-mumbai-1"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        }
      freeformTags = {}
  }
}


# ----------------------------------------
# VCN Variables
# ----------------------------------------

variable "vcn_display_name" {
  type        = string
  description = "vcn Display Name"
  default     = "test_vcn"
}

variable "vcn_dns_label" {
  type        = string
  description = "VCN DNS Label"
  default     = "demovcn"
}

variable "vcn_cidr_block" {
  type        = string
  description = "VCN Cidr Block"
  default     = "10.173.1.0/24"
}

# -----------------------------------------
# public Security List Variables
# ----------------------------------------

variable "security_list_display_name" {
  type        = string
  description = " Public Security List Display Name"
  default     = "public_security_list"
}

variable "public_security_list_is_stateless" {
  type        = bool
  description = "Public Security List is Stateless?"
  default     = false
}


# -----------------------------------------
# private Security List Variables
# ----------------------------------------

variable "private_security_list_display_name" {
  type        = string
  description = "Private Security List Display Name"
  default     = "private_security_list"
}
variable "private_security_list_is_stateless" {
  type        = bool
  description = "Private Security List is Stateless?"
  default     = false
}





# ----------------------------------------
#  Route Table Variables
# ----------------------------------------

variable "route_table_display_name" {
  type        = string
  description = "Route Table"
  default     = "public_route_table"
}

variable "pri_route_table_display_name" {
  type        = string
  description = "VCN Route Table"
  default     = "private_routetable"
}

# ----------------------------------------
# VCN Gateway Variables
# ----------------------------------------


variable "servicegw_display_name" {
  type        = string
  description = "Service Gateway Display Name"
  default     = "test_service_gateway"
}

variable "natgw_display_name" {
  type        = string
  description = "NAT Gateway Display Name"
  default     = "test_nat_gateway"
}

variable "natgw_block_traffic" {
  type        = bool
  description = "Block the traffic in NAT gateway on creation"
  default     = false
}

variable "internetgw_display_name" {
  type        = string
  description = "Internet Gateway Display Name"
  default     = "test_internet_gateway"
}


# ----------------------------------------
# public subnet Configuration Module
# ----------------------------------------

variable "public_vcn_subnet_display_name" {
  type        = string
  description = "Public Subnet Display Name"
  default     = "public_subnet"
}

variable "public_vcn_subnet_dns_label" {
  type        = string
  description = "Public Subnet DNS Label" 
  default     = "pubsubnet"
}
variable "public_vcn_subnet_cidr_block" {
  type        = string
  description = "Public Subnet Cidr Block"
  default     = "10.173.1.64/26"
}

# ----------------------------------------
# private Subnet Configuration Module
# ----------------------------------------

variable "private_vcn_subnet_display_name" {
  type        = string
  description = "Private Subnet Display Name"
  default     = "private_subnet"
}

variable "private_vcn_subnet_dns_label" {
  type        = string
  description = "Private Subnet DNS Label" 
  default     = "prisubnet"
}
variable "private_vcn_subnet_cidr_block" {
  type        = string
  description = "Private Subnet Cidr Block"
  default     = "10.173.1.0/26"
}



