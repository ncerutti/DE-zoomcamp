terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
  credentials = file("./keys/dezoom-terrasecret.json")
  project     = "dezoom-412200"
  region      = "europe-west2"
}

resource "google_storage_bucket" "dezoom_bucket" {
  name          = "bucket-dezoom-412200"
  location      = "EU"
  storage_class = "STANDARD"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
