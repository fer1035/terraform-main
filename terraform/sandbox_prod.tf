module "sandbox_prod" {
  source = "app.terraform.io/fer1035/cross-workspace/tfe"

  org_name     = "fer1035"
  project_name = "sandbox_prod"

  variable_sets = [
    "NI Sandbox Credentials - Prod Org"
  ]

  workspace_configurations = {
    sandbox_prod_main = {
      trigger_source = null
      tags           = ["prod", "sandbox", "main"]
    }
  }
}

output "sandbox_prod" {
  value = module.sandbox_prod.environment
}
