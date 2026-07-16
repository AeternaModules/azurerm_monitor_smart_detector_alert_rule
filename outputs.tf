output "monitor_smart_detector_alert_rules_id" {
  description = "Map of id values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitor_smart_detector_alert_rules_action_group" {
  description = "Map of action_group values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.action_group if v.action_group != null && length(v.action_group) > 0 }
}
output "monitor_smart_detector_alert_rules_description" {
  description = "Map of description values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "monitor_smart_detector_alert_rules_detector_type" {
  description = "Map of detector_type values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.detector_type if v.detector_type != null && length(v.detector_type) > 0 }
}
output "monitor_smart_detector_alert_rules_enabled" {
  description = "Map of enabled values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.enabled if v.enabled != null }
}
output "monitor_smart_detector_alert_rules_frequency" {
  description = "Map of frequency values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "monitor_smart_detector_alert_rules_name" {
  description = "Map of name values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitor_smart_detector_alert_rules_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "monitor_smart_detector_alert_rules_scope_resource_ids" {
  description = "Map of scope_resource_ids values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.scope_resource_ids if v.scope_resource_ids != null && length(v.scope_resource_ids) > 0 }
}
output "monitor_smart_detector_alert_rules_severity" {
  description = "Map of severity values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.severity if v.severity != null && length(v.severity) > 0 }
}
output "monitor_smart_detector_alert_rules_tags" {
  description = "Map of tags values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "monitor_smart_detector_alert_rules_throttling_duration" {
  description = "Map of throttling_duration values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.throttling_duration if v.throttling_duration != null && length(v.throttling_duration) > 0 }
}

