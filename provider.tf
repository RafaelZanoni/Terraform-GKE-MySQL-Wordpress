provider "google" {
  project     = "projeto-teste-terraformegke"
  credentials = file("projeto-teste-terraformegke-07da4fddb441.json")
  region      = "us-central1"
}
