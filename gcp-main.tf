resource "google_sql_database_instance" "db_pedroh" {
  name             = "db-pedroh"
  database_version = "POSTGRES_13"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_user" "db_pedroh" {
  name     = var.username
  instance = google_sql_database_instance.db_pedroh.name
  host     = "me.com"
  password = var.password
}