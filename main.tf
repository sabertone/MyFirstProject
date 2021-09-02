provider "google" {
    credentials = "${file("spring-house-324817-6b1d00e5a152.json")}"
    project = "spring-house-324817"
    region = "southamerica-east1"
    zone = "southamerica-east1-a"
}

resource "google_compute_network" "mfpvpc" {
  name                    = "sanpablovpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "juan" {
  name          = "lupe"
  ip_cidr_range = "192.168.169.0/24"
  network       = google_compute_network.mfpvpc.id
  
}