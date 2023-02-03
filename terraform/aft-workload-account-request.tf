module "aft-workload-account-01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "sriniawsctdemoworkloadac1@gmail.com"
    AccountName  = "workload-account-01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Workloads"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "srinivasan.vcs@gmail.com"
    SSOUserFirstName = "Srinivasan"
    SSOUserLastName  = "C"
  }

  account_tags = {
    "ABC:Owner"       = "srinivasan.vcs@gmail.com"
    "ABC:Division"    = "DEV"
    "ABC:Environment" = "DEV"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "srini-ct-acclerator"
  }

  change_management_parameters = {
    change_requested_by = "srinivasan.vcs@gmail.com"
    change_reason       = "Testing the account vending process with account customization"
  }

  custom_fields = {
    custom1 = "c"
    custom2 = "b"
  }

 account_customizations_name = "dev-customization"
}
