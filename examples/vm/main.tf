provider "google" {
  project = "YOUR_PROJECT_ID"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "basic" {
  name         = "basic-vm"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
  }
}