module "dev" {
  source = "app.terraform.io/fer1035/cross-workspace/tfe"

  org_name     = "fer1035"
  project_name = "dev"

  variable_sets = [
    "NI Sandbox Credentials - Dev Org"
  ]

  workspace_configurations = {
    dev_sandbox = {
      trigger_source = null
      tags           = ["dev", "sandbox"]
    }
  }
}

output "dev" {
  value = module.dev.environment
}
