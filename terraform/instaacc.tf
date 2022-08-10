module "sandbox08" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "salmankhann01234@gmail.com"
    AccountName               = "DevSecOps"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "shahbaz.alam@synectiks.com"
    SSOUserFirstName          = "DevSecOps"
    SSOUserLastName           = "Ops"
  }

  account_tags = {
    "Account" = "subaccount-devops"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "DevSecops Application testing"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}