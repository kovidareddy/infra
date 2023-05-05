resource "google_compute_snapshot" "snapshot2" {
  name               = var.snapshot2_name
  source_disk        = var.vm2_name
  zone               = var.snapshot_zone
  storage_locations  = var.storage_locations
}
