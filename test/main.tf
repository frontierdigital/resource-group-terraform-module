provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../src"

  environment      = "foo"
  identifier       = "baz"
  location         = "uksouth"
  set              = "standalone"
  workload_name    = "foo"
  workload_type    = "foo/bar"
  workload_version = "1.0.0"
  zone             = "bat"

  tags = {
    Foo = "Bar"
  }
}
