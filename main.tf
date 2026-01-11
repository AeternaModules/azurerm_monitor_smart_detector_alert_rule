resource "azurerm_monitor_smart_detector_alert_rule" "monitor_smart_detector_alert_rules" {
  for_each = var.monitor_smart_detector_alert_rules

  detector_type       = each.value.detector_type
  frequency           = each.value.frequency
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  scope_resource_ids  = each.value.scope_resource_ids
  severity            = each.value.severity
  description         = each.value.description
  enabled             = each.value.enabled
  tags                = each.value.tags
  throttling_duration = each.value.throttling_duration

  action_group {
    email_subject   = each.value.action_group.email_subject
    ids             = each.value.action_group.ids
    webhook_payload = each.value.action_group.webhook_payload
  }
}

