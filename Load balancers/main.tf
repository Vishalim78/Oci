##############################
#  Application  Load Balancer  
##############################

module "application_load_balancer" {
  source                      = "./alb_module"
  compartment_ocid            = local.compartment_ocid
  definedTags                 = var.project_tag.definedTags
  freeformTags                = var.project_tag.freeformTags
  display_name                = var.app_lb_display_name
  is_private                  = var.app_lb_is_private
  lb_shape                    = var.app_lb_lb_shape 
  minimum_bandwidth_in_mbps   = var.app_lb_minimum_bandwidth_in_mbps
  maximum_bandwidth_in_mbps   = var.app_lb_maximum_bandwidth_in_mbps
  subnet_ocid                 = local.subnet_ocid
}

#######################################
#  Application  Load Balancer Listener 
#######################################

module "listener" {
  source                      = "./listener_module"
  listener_display_name    	       = var.app_lb_listener_display_name
  listener_protocol        	       = var.app_lb_listener_protocol
  listener_port            	       = var.app_lb_listener_port
  backendset_name                  = module.backend_set.backendset_name
  application_load_balancer_ocid   = module.application_load_balancer.application_load_balancer_ocid
}

######################################
#  Application Load Balancer Backend 
######################################

module "backend" {
  source                           = "./backend_module"
  backend_port                     = var.app_lb_backend_port
  backend_ip_address               = var.app_lb_backend_ip_address
  backend_weight                   = var.app_lb_backend_weight
  backendset_name                  = module.backend_set.backendset_name
  application_load_balancer_ocid   = module.application_load_balancer.application_load_balancer_ocid
}

#########################################
#  Application  Load Balancer Backend Set 
#########################################

module "backend_set" {
  source                              = "./backendset_module"
  backendset_name 	                  = var.app_lb_backend_set_display_name
  backend_set_protocol                = var.app_lb_backend_set_protocol
  backend_set_port         	          = var.app_lb_backend_set_port 
  load_balancing_policy               = var.app_lb_load_balancing_policy
  backend_set_interval_ms             = var.app_lb_backend_set_interval_ms
  backend_set_timeout_in_millis       = var.app_lb_backend_set_timeout_in_millis
  backend_set_retries                 = var.app_lb_backend_set_retries
  application_load_balancer_ocid      = module.application_load_balancer.application_load_balancer_ocid
}
