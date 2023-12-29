module "sandbox_dev" {
  source = "app.terraform.io/fer1035/cross-workspace/tfe"

  org_name     = "fer1035"
  project_name = "sandbox_dev"

  variable_sets = [
    "NI Sandbox Credentials - Dev Org"
  ]

  workspace_configurations = {
    sandbox_dev_main = {
      trigger_source = null
    }
  }
}

output "sandbox_dev" {
  value = module.sandbox_dev.environment
}
