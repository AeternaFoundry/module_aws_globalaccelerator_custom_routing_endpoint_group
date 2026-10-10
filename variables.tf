variable "globalaccelerator_custom_routing_endpoint_groups" {
  description = <<EOT
Map of globalaccelerator_custom_routing_endpoint_groups, attributes below
Required:
    - listener_arn
    - destination_configuration (block):
        - from_port (required)
        - protocols (required)
        - to_port (required)
Optional:
    - endpoint_group_region
    - endpoint_configuration (block):
        - endpoint_id (optional)
EOT

  type = map(object({
    listener_arn          = string
    endpoint_group_region = optional(string)
    destination_configuration = list(object({
      from_port = number
      protocols = set(string)
      to_port   = number
    }))
    endpoint_configuration = optional(list(object({
      endpoint_id = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_custom_routing_endpoint_groups : (
        length(v.destination_configuration) >= 1
      )
    ])
    error_message = "Each destination_configuration list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_custom_routing_endpoint_groups : (
        alltrue([for item in v.destination_configuration : (item.from_port >= 1 && item.from_port <= 65535)])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_custom_routing_endpoint_groups : (
        alltrue([for item in v.destination_configuration : (item.to_port >= 1 && item.to_port <= 65535)])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.globalaccelerator_custom_routing_endpoint_groups : (
        v.endpoint_configuration == null || alltrue([for item in v.endpoint_configuration : (item.endpoint_id == null || (length(item.endpoint_id) >= 1 && length(item.endpoint_id) <= 255))])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

