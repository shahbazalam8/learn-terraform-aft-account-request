module "sandbox_retreat" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "bananakhann01234@gmail.com"
    AccountName               = "retreat"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "shahbaz.alam@synectiks.com"
    SSOUserFirstName          = "john"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Account" = "account-test"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "retreat account provisioning"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}