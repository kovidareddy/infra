resource "google_compute_disk" "disk2" {
  name  = var.disk2_name
  zone  = var.disk_zone
}