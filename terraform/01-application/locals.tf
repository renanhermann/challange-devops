
locals {
  common_tags = {
    Component = "app-runner"
    ManagedBy = "Terraform"
    Env       = var.environment
  }
}

