### Backend ###

resource "oci_load_balancer_backend" "backend" {
  backendset_name               = var.backendset_name
  load_balancer_id               = var.application_load_balancer_ocid
  port                           = var.backend_port 
  ip_address                     = var.backend_ip_address            
  weight                         = var.backend_weight
}
