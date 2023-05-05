resource "google_compute_snapshot" "snapshot3" {
  name               = var.snapshot3_name
  source_disk        = var.vm3_name
  zone               = var.snapshot_zone
  storage_locations  = var.storage_locations
}
