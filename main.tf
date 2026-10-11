data "databricks_registered_model" "registered_model_lookup" {
  for_each = var.registered_model_lookup

  full_name       = each.value.full_name
  include_aliases = each.value.include_aliases
  include_browse  = each.value.include_browse
  model_info      = each.value.model_info
  provider_config = each.value.provider_config
}

