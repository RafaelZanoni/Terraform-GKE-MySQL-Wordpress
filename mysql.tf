resource "google_sql_database" "database" {

  name     = "my-database1"
  instance =  google_sql_database_instance.db_instance.name
  project  =  "projeto-teste-terraformegke"
}

resource "google_sql_database_instance" "db_instance" {

  name             = "my-database-instance999995"
  database_version = "MYSQL_5_6"
  region           = "us-central1"
  project          = "projeto-teste-terraformegke"
  settings {

    tier = "db-f1-micro"
    ip_configuration {

      ipv4_enabled = true
      authorized_networks {

        name = "public  network"
        value = "0.0.0.0/0"
      }
    }
  }
}
resource "google_sql_user" "users" {

  name     = "myuser"
  instance = google_sql_database_instance.db_instance.name
  project  =  "projeto-teste-terraformegke"
  password = "redhat"
}
