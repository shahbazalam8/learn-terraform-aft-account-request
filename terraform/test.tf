module "sandbox_tree" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "salmankhann012345@gmail.com"
    AccountName               = "testaccount"
    ManagedOrganizationalUnit = "sandbox"
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

module "sandbox_branch" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "salmankhann0123456@gmail.com"
    AccountName               = "testaccount2"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "shahbaz.alam@synectiks.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Account" = "subaccount-stage"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "Staging Account for demo Application"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}