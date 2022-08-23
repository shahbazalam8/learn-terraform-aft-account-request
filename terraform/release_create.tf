module "recheck" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "amerkhann0123@gmail.com"
    AccountName               = "stageaccount"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "shahbaz.alam@synectiks.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Account" = "subaccount-stage"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "release creation test"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}