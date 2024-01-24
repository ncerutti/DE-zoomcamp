terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
    credentials = file(".keys/dezoom-terrasecret.json")
  project = "dezoom-412200"
  region = "europe-west2"
}