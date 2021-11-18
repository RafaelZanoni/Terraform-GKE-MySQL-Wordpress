resource "google_compute_firewall" "rule" {
  name    = "myfirewall"
  network = google_compute_network.myvpc.name
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

}
