output "registered_model_lookup_full_name" {
  description = "Map of full_name values across all registered_model_lookup, keyed the same as var.registered_model_lookup except keys with no full_name are omitted"
  value       = { for k, v in data.databricks_registered_model.registered_model_lookup : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "registered_model_lookup_include_aliases" {
  description = "Map of include_aliases values across all registered_model_lookup, keyed the same as var.registered_model_lookup except keys with no include_aliases are omitted"
  value       = { for k, v in data.databricks_registered_model.registered_model_lookup : k => v.include_aliases if v.include_aliases != null }
}
output "registered_model_lookup_include_browse" {
  description = "Map of include_browse values across all registered_model_lookup, keyed the same as var.registered_model_lookup except keys with no include_browse are omitted"
  value       = { for k, v in data.databricks_registered_model.registered_model_lookup : k => v.include_browse if v.include_browse != null }
}
output "registered_model_lookup_model_info" {
  description = "Map of model_info values across all registered_model_lookup, keyed the same as var.registered_model_lookup except keys with no model_info are omitted"
  value       = { for k, v in data.databricks_registered_model.registered_model_lookup : k => v.model_info if v.model_info != null && length(v.model_info) > 0 }
}
output "registered_model_lookup_provider_config" {
  description = "Map of provider_config values across all registered_model_lookup, keyed the same as var.registered_model_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_registered_model.registered_model_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

