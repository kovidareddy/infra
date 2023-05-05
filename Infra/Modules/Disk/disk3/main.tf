resource "google_compute_disk" "disk3" {
  name  = var.disk3_name
  zone  = var.disk_zone
}