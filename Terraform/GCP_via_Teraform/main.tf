provider "google" {
    credentials = file("ansible-gcp-service-account.json")

    project = "ansible-371117"
    region = "asia-south1"
    zone = "asia-south1-c"
}

resource "google_compute_network" "VPC" {
    name = "practice-network"
    auto_create_subnetworks = true
  
}


resource "google_compute_firewall" "practice-vpc" {
  name    = "test-firewall"
  network = google_compute_network.default.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "22", "8080", "1000-2000"]
  }

  source_tags = ["web"]
}

resource "google_compute_network" "default" {
  name = "test-network"
}
resource "google_compute_instance" "vminstance" {
  name = "vminstance"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network = "practice-network"
    access_config {

    }
  }
}

