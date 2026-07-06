output "monitor_smart_detector_alert_rules" {
  description = "All monitor_smart_detector_alert_rule resources"
  value       = azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules
}
output "monitor_smart_detector_alert_rules_action_group" {
  description = "List of action_group values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.action_group]
}
output "monitor_smart_detector_alert_rules_description" {
  description = "List of description values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.description]
}
output "monitor_smart_detector_alert_rules_detector_type" {
  description = "List of detector_type values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.detector_type]
}
output "monitor_smart_detector_alert_rules_enabled" {
  description = "List of enabled values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.enabled]
}
output "monitor_smart_detector_alert_rules_frequency" {
  description = "List of frequency values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.frequency]
}
output "monitor_smart_detector_alert_rules_name" {
  description = "List of name values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.name]
}
output "monitor_smart_detector_alert_rules_resource_group_name" {
  description = "List of resource_group_name values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.resource_group_name]
}
output "monitor_smart_detector_alert_rules_scope_resource_ids" {
  description = "List of scope_resource_ids values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.scope_resource_ids]
}
output "monitor_smart_detector_alert_rules_severity" {
  description = "List of severity values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.severity]
}
output "monitor_smart_detector_alert_rules_tags" {
  description = "List of tags values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.tags]
}
output "monitor_smart_detector_alert_rules_throttling_duration" {
  description = "List of throttling_duration values across all monitor_smart_detector_alert_rules"
  value       = [for k, v in azurerm_monitor_smart_detector_alert_rule.monitor_smart_detector_alert_rules : v.throttling_duration]
}

