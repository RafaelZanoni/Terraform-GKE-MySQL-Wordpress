resource "google_compute_instance" "my_instance" {

  name         = "project"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  project      = "projeto-teste-terraformegke"


  tags = ["foo", "bar"]


  boot_disk {
    initialize_params {

      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {

    network            = "${google_compute_network.myvpc.name}"
    subnetwork         = "${google_compute_subnetwork.network.name}"
    subnetwork_project = "projeto-teste-terraformegke"
    access_config {
      
    }
  }

}
