terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.64.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {

  #credentials = file("/home/vagrant/devopscloud-331312-7c2e742265ec.json")

  project = "devopscloud-331312"
  region  = "us-central1"
  zone    = "us-central1-c"
}