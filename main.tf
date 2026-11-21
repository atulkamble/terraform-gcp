terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.12.0"
    }
  }
}

provider "google" {
  project = "ethans-515409"
  region  = "us-east1"
}

resource "google_storage_bucket" "practicebucket" {
  name     = "practicebucket-ethans"
  location = "US"
}
