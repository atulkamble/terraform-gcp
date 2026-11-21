provider "google" {
  project = "YOUR_PROJECT_ID"
  region  = "us-central1"
}

resource "google_storage_bucket" "demo" {
  name     = "YOUR_UNIQUE_BUCKET_NAME"
  location = "US"
}
