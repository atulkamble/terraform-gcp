provider "google" {
  project = "YOUR_PROJECT_ID"
  region  = "us-central1"
}

resource "google_compute_network" "basic" {
  name                    = "basic-vpc"
  auto_create_subnetworks = true
}