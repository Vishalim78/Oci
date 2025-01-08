locals {


################## public Security Rules ############################


 public_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"       = "0.0.0.0/0"
      "security_list_egress_security_rules_protocol"          = "all"
      "security_list_egress_security_rules_destination_type"  = "CIDR_BLOCK"
      "security_list_egress_security_rules_stateless"         = var.public_security_list_is_stateless
    }
    
  ]

  public_source_security_rules = [
    {
      "security_list_ingress_security_rules_source"           = "0.0.0.0/0"
      "security_list_ingress_security_rules_protocol"         = 6
      "security_list_ingress_security_rules_source_type"      = "CIDR_BLOCK"
      "security_list_ingress_security_rules_stateless"        = var.public_security_list_is_stateless
      "security_list_ingress_security_rules_max_port"         = "22"
      "security_list_ingress_security_rules_min_port"         = "22"
   
    },
    {
      "security_list_ingress_security_rules_source"           = "0.0.0.0/0"
      "security_list_ingress_security_rules_protocol"         = 6
      "security_list_ingress_security_rules_source_type"      = "CIDR_BLOCK"
      "security_list_ingress_security_rules_stateless"        = var.public_security_list_is_stateless 
      "security_list_ingress_security_rules_max_port"         = "80"
      "security_list_ingress_security_rules_min_port"         = "80"

    }
  ]
private_destination_security_rules = [
    {
      "security_list_egress_security_rules_destination"       = "10.0.0.0/8"
      "security_list_egress_security_rules_protocol"          = "all"
      "security_list_egress_security_rules_destination_type"  = "CIDR_BLOCK"
      "security_list_egress_security_rules_stateless"         = var.private_security_list_is_stateless
      "security_list_egress_security_rules_max_port"          = "65535"
      "security_list_egress_security_rules_min_port"          = "1"
     

    },
    {
      "security_list_egress_security_rules_destination"       = "10.2.0.0/16"
      "security_list_egress_security_rules_protocol"          = 6
      "security_list_egress_security_rules_destination_type"  = "CIDR_BLOCK"
      "security_list_egress_security_rules_stateless"         = var.private_security_list_is_stateless
      "security_list_egress_security_rules_max_port"          = "65535"
      "security_list_egress_security_rules_min_port"          = "1"
    },
    {
      "security_list_egress_security_rules_destination"       = "10.3.0.0/16"
      "security_list_egress_security_rules_protocol"          = 6
      "security_list_egress_security_rules_destination_type"  = "CIDR_BLOCK"
      "security_list_egress_security_rules_stateless"         = var.private_security_list_is_stateless
      "security_list_egress_security_rules_max_port"          = "65535"
      "security_list_egress_security_rules_min_port"          = "1"
    }
  ]

  private_source_security_rules = [
    {
      "security_list_ingress_security_rules_source"            = "10.0.0.0/8"
      "security_list_ingress_security_rules_protocol"          = "all"
      "security_list_ingress_security_rules_source_type"       = "CIDR_BLOCK"
      "security_list_ingress_security_rules_stateless"         = var.private_security_list_is_stateless
      "security_list_ingress_security_rules_max_port"         = "1522"
      "security_list_ingress_security_rules_min_port"         = "1522"
    
    },
    {
      "security_list_ingress_security_rules_source"           = "10.0.0.0/8"
      "security_list_ingress_security_rules_protocol"         = 6
      "security_list_ingress_security_rules_source_type"      = "CIDR_BLOCK"
      "security_list_ingress_security_rules_stateless"        = var.private_security_list_is_stateless
      "security_list_ingress_security_rules_max_port"         = "22"
      "security_list_ingress_security_rules_min_port"         = "22"
   
    },
    {
      "security_list_ingress_security_rules_source"           = "10.6.0.0/16"
      "security_list_ingress_security_rules_protocol"         = 6
      "security_list_ingress_security_rules_source_type"      = "CIDR_BLOCK"
      "security_list_ingress_security_rules_stateless"        = var.private_security_list_is_stateless 
      "security_list_ingress_security_rules_max_port"         = "65535"
      "security_list_ingress_security_rules_min_port"         = "1"

    },
    {
      "security_list_ingress_security_rules_source"           = "10.3.0.0/16"
      "security_list_ingress_security_rules_protocol"         = 6
      "security_list_ingress_security_rules_source_type"      = "CIDR_BLOCK"
      "security_list_ingress_security_rules_stateless"        = var.private_security_list_is_stateless 
      "security_list_ingress_security_rules_max_port"         = "65535"
      "security_list_ingress_security_rules_min_port"         = "1"
    },
    {
      "security_list_ingress_security_rules_source"           = "10.4.0.0/16"
      "security_list_ingress_security_rules_protocol"         = 6
      "security_list_ingress_security_rules_source_type"      = "CIDR_BLOCK"
      "security_list_ingress_security_rules_stateless"        = var.private_security_list_is_stateless 
      "security_list_ingress_security_rules_max_port"         = "65535"
      "security_list_ingress_security_rules_min_port"         = "1"
    
    }
  ]


route_rules  = [
  
{
    "destination"       = "10.0.0.0/32"
    "network_entity_id" = module.test_nat_gateway.natgateway_ocid
    "destination_type"  = "CIDR_BLOCK"
},
{
    "destination"       = "10.0.0.0/16"
    "network_entity_id" = module.test_service_gateway.service_gateway_ocid
    "destination_type"  = "SERVICE_CIDR_BLOCK"
},

]
public_route_rules =[
{
   "destination"       = "10.0.1.0/24"
   "network_entity_id" = module.test_internet_gateway.internet_gateway_ocid
   "destination_type"  = "CIDR_BLOCK"
}
]


}
