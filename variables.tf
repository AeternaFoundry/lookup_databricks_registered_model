variable "registered_model_lookup" {
  description = <<EOT
Map of registered_model_lookup, attributes below
Required:
    - full_name
Optional:
    - include_aliases
    - include_browse
    - model_info
    - provider_config
EOT

  type = map(object({
    full_name       = string
    include_aliases = optional(bool)
    include_browse  = optional(bool)
    model_info = optional(list(object({
      aliases = optional(list(object({
        alias_name   = optional(string)
        catalog_name = optional(string)
        id           = optional(string)
        model_name   = optional(string)
        schema_name  = optional(string)
        version_num  = optional(number)
      })))
      catalog_name     = optional(string)
      comment          = optional(string)
      created_at       = optional(number)
      created_by       = optional(string)
      full_name        = optional(string)
      metastore_id     = optional(string)
      name             = optional(string)
      owner            = optional(string)
      schema_name      = optional(string)
      storage_location = optional(string)
      updated_at       = optional(number)
      updated_by       = optional(string)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

