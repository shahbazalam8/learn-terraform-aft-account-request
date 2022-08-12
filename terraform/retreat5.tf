module "sandbox_retreat5" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "nomailtest@gmail.com"
    AccountName               = "retreat4"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "shahbaz.alam@synectiks.com"
    SSOUserFirstName          = "johndd"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Account" = "account-test"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "retreat4 account provisioning"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}