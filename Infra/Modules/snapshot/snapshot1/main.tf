resource "google_compute_snapshot" "snapshot1" {
  name               = var.snapshot1_name
  source_disk        = var.vm1_name
  zone               = var.snapshot_zone
  storage_locations  = var.storage_locations
}
