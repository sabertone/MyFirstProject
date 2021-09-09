provider "google" {
    credentials = file(var.credentials_file)
    project = var.project
    region = var.region
    zone = var.zone
}

resource "google_compute_network" "mfpvpc" {
  name                    = "juanvpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "juan" {
  name          = "lupenet"
  ip_cidr_range = "192.168.169.0/24"
  network       = google_compute_network.mfpvpc.id
  
}