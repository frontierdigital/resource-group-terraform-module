resource "azurerm_resource_group" "main" {
  name     = "${var.zone}-${var.environment}-${lookup(local.short_locations, var.location)}-${local.identifier}-rg"
  location = var.location

  tags = merge(var.tags, local.tags)
}
