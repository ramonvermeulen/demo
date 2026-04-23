terraform {
  required_version = ">= 1.3.0"


  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.13.1"
    }
  }


  # required_providers {
  #   google      = ">= 6.5.0"
  #   google-beta = ">= 6.5.0"
  # }

  # backend "gcs" {
  #   bucket  = "magos-tfstate-staging"
  #   prefix  = "terraform/state"
  # }
}
