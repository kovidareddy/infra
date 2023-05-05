resource "google_compute_firewall" "firewall" {
  name      = var.fw_name
  network   = var.vpc_network1
  allow {

    protocol = var.protocol
    
  }
    source_ranges = var.source_ranges
    target_tags   = var.target_tags
}