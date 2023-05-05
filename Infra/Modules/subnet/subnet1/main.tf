resource "google_compute_subnetwork" "subnetwork1" {
  name          = var.subnet1_name
  ip_cidr_range = var.ip_cidr_range1
  region        = var.region1
  network       = var.vpc_network1
}