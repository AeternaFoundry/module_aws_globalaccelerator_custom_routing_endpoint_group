output "globalaccelerator_custom_routing_endpoint_groups_id" {
  description = "Map of id values across all globalaccelerator_custom_routing_endpoint_groups, keyed the same as var.globalaccelerator_custom_routing_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_custom_routing_endpoint_group.globalaccelerator_custom_routing_endpoint_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "globalaccelerator_custom_routing_endpoint_groups_arn" {
  description = "Map of arn values across all globalaccelerator_custom_routing_endpoint_groups, keyed the same as var.globalaccelerator_custom_routing_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_custom_routing_endpoint_group.globalaccelerator_custom_routing_endpoint_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "globalaccelerator_custom_routing_endpoint_groups_destination_configuration" {
  description = "Map of destination_configuration values across all globalaccelerator_custom_routing_endpoint_groups, keyed the same as var.globalaccelerator_custom_routing_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_custom_routing_endpoint_group.globalaccelerator_custom_routing_endpoint_groups : k => v.destination_configuration if v.destination_configuration != null && length(v.destination_configuration) > 0 }
}
output "globalaccelerator_custom_routing_endpoint_groups_endpoint_configuration" {
  description = "Map of endpoint_configuration values across all globalaccelerator_custom_routing_endpoint_groups, keyed the same as var.globalaccelerator_custom_routing_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_custom_routing_endpoint_group.globalaccelerator_custom_routing_endpoint_groups : k => v.endpoint_configuration if v.endpoint_configuration != null && length(v.endpoint_configuration) > 0 }
}
output "globalaccelerator_custom_routing_endpoint_groups_endpoint_group_region" {
  description = "Map of endpoint_group_region values across all globalaccelerator_custom_routing_endpoint_groups, keyed the same as var.globalaccelerator_custom_routing_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_custom_routing_endpoint_group.globalaccelerator_custom_routing_endpoint_groups : k => v.endpoint_group_region if v.endpoint_group_region != null && length(v.endpoint_group_region) > 0 }
}
output "globalaccelerator_custom_routing_endpoint_groups_listener_arn" {
  description = "Map of listener_arn values across all globalaccelerator_custom_routing_endpoint_groups, keyed the same as var.globalaccelerator_custom_routing_endpoint_groups"
  value       = { for k, v in aws_globalaccelerator_custom_routing_endpoint_group.globalaccelerator_custom_routing_endpoint_groups : k => v.listener_arn if v.listener_arn != null && length(v.listener_arn) > 0 }
}

