module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shabazalam8@yahoo.com"
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
    change_reason       = "Staging Account for demo Application"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "testit" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "kalakhann01234@gmail.com"
    AccountName               = "devtest"
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
    change_reason       = "devtest Account for demo Application"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "tryit"
}