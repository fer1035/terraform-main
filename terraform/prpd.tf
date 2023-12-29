module "prod" {
  source = "app.terraform.io/fer1035/cross-workspace/tfe"

  org_name     = "fer1035"
  project_name = "prod"

  variable_sets = [
    "NI Sandbox Credentials - Prod Org"
  ]

  workspace_configurations = {
    prod_sandbox = {
      trigger_source = null
      tags           = ["prod", "sandbox"]
    }
  }
}

output "prod" {
  value = module.prod.environment
}
