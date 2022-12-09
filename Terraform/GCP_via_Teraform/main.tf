provider "google" {
    credentials = file("/home/Visual_Studio_Terraform/Terraform/GCP_via_Teraform/terraform-371117-367a92689811.json")

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
    bucket = "tf-state-dev"
    prefix = "terraform/state"
    credentials = file("/home/Visual_Studio_Terraform/Terraform/GCP_via_Teraform/terraform-371117-367a92689811.json")
  }
}