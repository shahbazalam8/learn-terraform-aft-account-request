module "sandbox_retreat3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "bananakhann0123456@gmail.com"
    AccountName               = "retreat3"
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
    change_reason       = "retreat3 account provisioning"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}