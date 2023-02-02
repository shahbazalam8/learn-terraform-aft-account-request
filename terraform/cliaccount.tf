module "cliaccount" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "kalakhann01234@gmail.com"
    AccountName               = "cliaccount"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "shahbaz.alam@synectiks.com"
    SSOUserFirstName          = "adminuser"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Account" = "subaccount-stage"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "cliaccount Account for demo Application"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "tryitcli"
}