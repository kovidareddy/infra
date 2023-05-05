resource "google_compute_image" "image1" {
  name              = var.image1_name
  source_snapshot   = var.snapshot1_name
}