# ----------------------------------------
# VCN  Module
# ----------------------------------------

module "test_vcn" {
  source                = "./vcn_module"
  compartment_ocid      = var.compartment_ocid
  vcn_display_name      = var.vcn_display_name
  vcn_dns_label         = var.vcn_dns_label
  vcn_cidr_block        = var.vcn_cidr_block
  project_tag           = var.project_tag
}

# ----------------------------------------
#   Security List Module
# ----------------------------------------


module "private_security_list" {
  source                              = "./private_securitylist_module"
  compartment_ocid                    = var.compartment_ocid
  project_tag                         = var.project_tag
  private_security_list_display_name  = var.private_security_list_display_name
  private_destination_security_rules  = local.private_destination_security_rules
  private_source_security_rules       = local.private_source_security_rules
  vcn_ocid                            = module.test_vcn.vcn_ocid
}

module "public_security_list" {
  source                             = "./public_securitylist_module"
  compartment_ocid                   = var.compartment_ocid
  project_tag                        = var.project_tag
  security_list_display_name         = var.security_list_display_name
  public_destination_security_rules  = local.public_destination_security_rules
  public_source_security_rules       = local.public_source_security_rules
  vcn_ocid                           = module.test_vcn.vcn_ocid
}
# ----------------------------------------
#  Route Table Modules
# ----------------------------------------

module "private_route_table" {
  source                  = "./private_route-table_module"
  compartment_ocid        = var.compartment_ocid
  project_tag             = var.project_tag
  pri_route_table_display_name = var.pri_route_table_display_name
  vcn_ocid                = module.test_vcn.vcn_ocid
  route_rules             = local.route_rules
}

module "public_route_table" {
  source                  = "./public_route-table_module"
  compartment_ocid        = var.compartment_ocid
  project_tag             = var.project_tag
  route_table_display_name = var.route_table_display_name
  vcn_ocid                = module.test_vcn.vcn_ocid
  public_route_rules             = local.public_route_rules
}


# ----------------------------------------
# Internet gateway Module  
# ----------------------------------------

module "test_internet_gateway" {
  source                         = "./internet-gateway_module"
  compartment_ocid               = var.compartment_ocid
  vcn_ocid                       = module.test_vcn.vcn_ocid
  internetgw_display_name        = var.internetgw_display_name
}
# ----------------------------------------
#  Service Gateway Module
# ----------------------------------------

module "test_service_gateway" {
  source                       = "./service-gateway_module"
  compartment_ocid              = var.compartment_ocid
 
  servicegw_display_name        = var.servicegw_display_name
  vcn_ocid                      = module.test_vcn.vcn_ocid
}

# ----------------------------------------
#  NAT Gateway Module
# ----------------------------------------

module "test_nat_gateway" {
    source                = "./nat-gateway_module"
    compartment_ocid      = var.compartment_ocid
    project_tag           = var.project_tag
    vcn_ocid              = module.test_vcn.vcn_ocid
    natgw_display_name    = var.natgw_display_name
    natgw_block_traffic   = var.natgw_block_traffic
}


# ---------------------------------------------
# Subnet Configuration Module
# ---------------------------------------------

module "public_subnet" {
  source                       = "./public_subnet_module"
  compartment_ocid             = var.compartment_ocid
  project_tag                  = var.project_tag
  public_vcn_subnet_display_name = var.public_vcn_subnet_display_name
  public_vcn_subnet_dns_label  = var.public_vcn_subnet_dns_label
  public_vcn_subnet_cidr_block = var.public_vcn_subnet_cidr_block
  route_table_ocid             = module.public_route_table.route_table_ocid
  vcn_ocid                     = module.test_vcn.vcn_ocid
  security_list_ocid           = module.public_security_list.security_list_ocid
}

module "private_subnet" {
  source                          = "./private_subnet_module"
  compartment_ocid                = var.compartment_ocid
  project_tag                     = var.project_tag
  private_vcn_subnet_display_name = var.private_vcn_subnet_display_name
  private_vcn_subnet_dns_label    = var.private_vcn_subnet_dns_label
  private_vcn_subnet_cidr_block   = var.private_vcn_subnet_cidr_block
  pri_route_table_ocid            = module.private_route_table.pri_route_table_ocid
  vcn_ocid                        = module.test_vcn.vcn_ocid
  pri_security_list_ocid          = module.private_security_list.pri_security_list_ocid
}