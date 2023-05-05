resource "google_compute_subnetwork" "subnetwork2" {
  name          = var.subnet2_name
  ip_cidr_range = var.ip_cidr_range2
  region        = var.region2
  network       = var.vpc_network2
}