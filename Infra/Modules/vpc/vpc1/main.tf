resource "google_compute_network" "vpc_network1" {
  name                    = var.vpc_network1
  routing_mode            = var.routing_mode
  auto_create_subnetworks = var.auto_create_subnetwork
  mtu                     = 1460
}