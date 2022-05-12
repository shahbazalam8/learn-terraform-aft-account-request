module "sandbox02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "catkhann01234@gmail.com"
    AccountName               = "demoaccount"
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
    change_reason       = "Demo Account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}