terraform {
  backend "azurerm" {
    resource_group_name = "<%= expansion(':ENV-:LOCATION') %>"
    storage_account_name = "<%= expansion('ts:SUBSCRIPTION_HASH:LOCATION:ENV') %>"
    container_name = "terraform-state"
    key = "<%= expansion(':LOCATION/:ENV/:BUILD_DIR/terraform.tfstate') %>"
  }
}
