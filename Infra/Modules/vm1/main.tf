resource "google_compute_instance" "vm1_instance" {
  name         = var.vm1_name
  machine_type = var.machine_type
  zone         = var.zone
  tags  = var.tags
  boot_disk {
    initialize_params {
      image = var.image_id  
    }
  }

  network_interface {
    subnetwork = var.subnet1_name
       access_config {
      // Ephemeral public IP
    }
}
}
