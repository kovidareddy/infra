resource "google_compute_image" "image3" {
  name              = var.image3_name
  source_snapshot   = var.snapshot3_name
}