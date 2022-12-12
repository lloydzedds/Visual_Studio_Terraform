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
resource "google_compute_instance" "Lloyd_instance" {
  name = "Lloyd_instance"
  machine_type = "e2-medium"
  
  boot_disk {
    initialize_params {
      image = "Ubuntu 20.04 LTS"
    }
  }
  network_interface {
    network = "practice-network"
    access_config {

    }
  }
}