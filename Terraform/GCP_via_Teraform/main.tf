provider "google" {
    credentials = file("terraform-371117-367a92689811.json")

    project = "terraform-371117"
    region = us-east1
    zone = us-east1-c
}
resource "google_compute_network" "VPC" {
    name = "practice-network"
    auto_create_subnetworks = true
  
}
terraform {
  backend "gcs" {
    bucket = "tf-state-devv"
    prefix = "Terraform/State"
    credentials = file("terraform-371117-367a92689811.json")
  }
}