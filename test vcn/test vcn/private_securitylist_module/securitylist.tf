resource "oci_core_security_list" "private_security_list" {
  compartment_id = var.compartment_ocid
  vcn_id         = var.vcn_ocid
  defined_tags   = var.project_tag.definedTags
  freeform_tags  = var.project_tag.freeformTags
  display_name   = var.private_security_list_display_name

  dynamic "egress_security_rules" {
    for_each = var.private_destination_security_rules
    content {
      protocol         = egress_security_rules.value.security_list_egress_security_rules_protocol
      destination      = egress_security_rules.value.security_list_egress_security_rules_destination
      destination_type = egress_security_rules.value.security_list_egress_security_rules_destination_type
      stateless        = egress_security_rules.value.security_list_egress_security_rules_stateless

      dynamic "tcp_options" {
        for_each = egress_security_rules.value.security_list_egress_security_rules_protocol == 6 ? [egress_security_rules.value] : []
        content {
          max = tcp_options.value.security_list_egress_security_rules_max_port
          min = tcp_options.value.security_list_egress_security_rules_min_port
        }
      }

      dynamic "udp_options" {
        for_each = egress_security_rules.value.security_list_egress_security_rules_protocol == 17 ? [egress_security_rules.value] : []
        content {
          max = udp_options.value.security_list_egress_security_rules_max_port
          min = udp_options.value.security_list_egress_security_rules_min_port
        }
      }

      dynamic "icmp_options" {
        for_each = egress_security_rules.value.security_list_egress_security_rules_protocol == 1 ? [egress_security_rules.value] : []
        content {
          type = icmp_options.value.security_list_egress_security_rules_icmp_options_type
          code = icmp_options.value.security_list_egress_security_rules_icmp_options_code
        }
      }
    }
  }

  dynamic "ingress_security_rules" {
    for_each = var.private_source_security_rules
    content {
      protocol    = ingress_security_rules.value.security_list_ingress_security_rules_protocol
      source      = ingress_security_rules.value.security_list_ingress_security_rules_source
      source_type = ingress_security_rules.value.security_list_ingress_security_rules_source_type
      stateless   = ingress_security_rules.value.security_list_ingress_security_rules_stateless

      dynamic "tcp_options" {
        for_each = ingress_security_rules.value.security_list_ingress_security_rules_protocol == 6 ? [ingress_security_rules.value] : []
        content {
          max = tcp_options.value.security_list_ingress_security_rules_max_port
          min = tcp_options.value.security_list_ingress_security_rules_min_port
        }
      }

      dynamic "udp_options" {
        for_each = ingress_security_rules.value.security_list_ingress_security_rules_protocol == 17 ? [ingress_security_rules.value] : []
        content {
          max = udp_options.value.security_list_ingress_security_rules_max_port
          min = udp_options.value.security_list_ingress_security_rules_min_port
        }
      }

      dynamic "icmp_options" {
        for_each = ingress_security_rules.value.security_list_ingress_security_rules_protocol == 1 ? [ingress_security_rules.value] : []
        content {
          type = icmp_options.value.security_list_ingress_security_rules_icmp_options_type
          code = icmp_options.value.security_list_ingress_security_rules_icmp_options_code
        }
      }
    }
  }
}
