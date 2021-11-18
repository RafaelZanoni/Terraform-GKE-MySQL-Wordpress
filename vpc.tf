resource "google_compute_network" "myvpc" {
  name                    = "my-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "network" {
  name          = "my-subnet"
  ip_cidr_range = "10.64.0.0/14"
  region        = "us-central1"
  network       = google_compute_network.myvpc.id
}
