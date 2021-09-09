provider "google" {
    credentials = file(var.credentials_file)
    project = var.projec
    region = var.region
    zone = var.zone
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