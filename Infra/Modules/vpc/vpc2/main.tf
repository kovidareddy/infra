resource "google_compute_network" "vpc_network2" {
  name                    = var.vpc_network2
  routing_mode            = var.routing_mode
  auto_create_subnetworks = var.auto_create_subnetwork
  mtu                     = 1460
}