locals {
  name           = "${var.project_name}-${var.environment}"
  current_time = formatdate("YYYY-MM-DD-hh-mm", timestamp())

}