terraform {
  required_version = ">= 1.3.0"

  required_providers {
    google      = ">= 6.5.0"
    google-beta = ">= 6.5.0"
  }

  backend "gcs" {
    bucket  = "magos-tfstate-staging"
    prefix  = "terraform/state"
  }
}
