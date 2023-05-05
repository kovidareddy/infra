resource "google_compute_disk" "disk1" {
  name  = var.disk1_name
  zone  = var.disk_zone
}