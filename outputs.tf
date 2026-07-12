output "monitor_smart_detector_alert_rules_action_group" {
  description = "Map of action_group values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.action_group }
}
output "monitor_smart_detector_alert_rules_description" {
  description = "Map of description values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.description }
}
output "monitor_smart_detector_alert_rules_detector_type" {
  description = "Map of detector_type values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.detector_type }
}
output "monitor_smart_detector_alert_rules_enabled" {
  description = "Map of enabled values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.enabled }
}
output "monitor_smart_detector_alert_rules_frequency" {
  description = "Map of frequency values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.frequency }
}
output "monitor_smart_detector_alert_rules_name" {
  description = "Map of name values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.name }
}
output "monitor_smart_detector_alert_rules_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.resource_group_name }
}
output "monitor_smart_detector_alert_rules_scope_resource_ids" {
  description = "Map of scope_resource_ids values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.scope_resource_ids }
}
output "monitor_smart_detector_alert_rules_severity" {
  description = "Map of severity values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.severity }
}
output "monitor_smart_detector_alert_rules_tags" {
  description = "Map of tags values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.tags }
}
output "monitor_smart_detector_alert_rules_throttling_duration" {
  description = "Map of throttling_duration values across all monitor_smart_detector_alert_rules, keyed the same as var.monitor_smart_detector_alert_rules"
  value       = { for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : k => v.throttling_duration }
}

