terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.64.0"
    }
  }
}

provider "google" {
  project = "devopscloud-331312"
  region  = "us-central1"
  zone    = "us-central1-c"
}