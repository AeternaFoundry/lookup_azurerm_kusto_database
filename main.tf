data "azurerm_kusto_database" "kusto_database_lookup" {
  for_each = var.kusto_database_lookup

  cluster_name        = each.value.cluster_name
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}

