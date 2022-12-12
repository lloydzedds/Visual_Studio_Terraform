provider "google" {
    credentials = file("terraform-371117-9d27713c1607.json")

    project = "terraform-371117"
    region = "asia-south1"
    zone = "asia-south1-c"
}

resource "google_compute_network" "VPC" {
    name = "practice-network"
    auto_create_subnetworks = true
  
}
terraform {
  backend "gcs" {
    credentials = file("terraform-371117-9d27713c1607.json")
    bucket = "tf-state-devv"
    prefix = "Terraform/State"
   
  }
}