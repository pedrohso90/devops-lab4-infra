resource "google_sql_database_instance" "db_pedroh" {
  name             = "db-pedroh"
  database_version = "POSTGRES_13"

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        name = "all"
        value = "0.0.0.0/0"
      }
    }
  }
}

resource "google_sql_user" "db_pedroh" {
  name     = var.username
  instance = google_sql_database_instance.db_pedroh.name
  password = var.password
}

output "public_ip_address" {
  value = google_sql_database_instance.db_pedroh.public_ip_address
}