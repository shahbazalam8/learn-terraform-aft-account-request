module "test2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "salmankhann01234567@gmail.com"
    AccountName               = "testaccount"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "shahbaz.alam@synectiks.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Account" = "subaccount-stage"
  }

  change_management_parameters = {
    change_requested_by = "Admin test user"
    change_reason       = "Staging Account for demo Application"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}