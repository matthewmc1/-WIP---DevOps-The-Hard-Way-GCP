resource "google_storage_bucket" "terraform_state" {
  name = "terraform-state-devopsthehardway-gcp"
  location = "EU"

  versioning { 
    enabled = true
  }

  project = var.project_id

  uniform_bucket_level_access = true
}

