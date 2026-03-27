# locals {
#   enabled_services = [
#     "logging.googleapis.com",
#   ]
# }

# resource "google_project_service" "enabled_services" {
#   for_each = toset(local.enabled_services)
#   project  = var.project_id
#   service  = each.key

#   disable_on_destroy = false
# }
