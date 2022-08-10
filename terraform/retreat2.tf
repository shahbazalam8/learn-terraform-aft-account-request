module "sandbox_retreat2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "bananakhann012345@gmail.com"
    AccountName               = "retreat2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "shahbaz.alam@synectiks.com"
    SSOUserFirstName          = "johnd"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Account" = "account-test"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "retreat2 account provisioning"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}