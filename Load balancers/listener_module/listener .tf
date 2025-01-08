### Listener ###

resource oci_load_balancer_listener app_lb_listener {
  default_backend_set_name       = var.backendset_name
  load_balancer_id               = var.application_load_balancer_ocid
  name                           = var.listener_display_name
  port                           = var.listener_port
  protocol                       = var.listener_protocol
}
