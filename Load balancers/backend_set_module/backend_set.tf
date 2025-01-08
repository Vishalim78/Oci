resource oci_load_balancer_backend_set backend_set {
  health_checker {
    port                          = var.backend_set_port
    protocol                      = var.backend_set_protocol
    interval_ms                   = var.backend_set_interval_ms
    timeout_in_millis             = var.backend_set_timeout_in_millis
    retries                       = var.backend_set_retries
  }
  load_balancer_id                = var.application_load_balancer_ocid
  name                            = var.backendset_name
  policy                          = var.load_balancing_policy
}
