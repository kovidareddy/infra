resource "google_compute_image" "image2" {
  name              = var.image2_name
  source_snapshot   = var.snapshot2_name
}