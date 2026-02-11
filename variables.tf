variable "monitor_smart_detector_alert_rules" {
  description = <<EOT
Map of monitor_smart_detector_alert_rules, attributes below
Required:
    - detector_type
    - frequency
    - name
    - resource_group_name
    - scope_resource_ids
    - severity
    - action_group (block):
        - email_subject (optional)
        - ids (required)
        - webhook_payload (optional)
Optional:
    - description
    - enabled
    - tags
    - throttling_duration
EOT

  type = map(object({
    detector_type       = string
    frequency           = string
    name                = string
    resource_group_name = string
    scope_resource_ids  = set(string)
    severity            = string
    description         = optional(string)
    enabled             = optional(bool) # Default: true
    tags                = optional(map(string))
    throttling_duration = optional(string)
    action_group = object({
      email_subject   = optional(string)
      ids             = set(string)
      webhook_payload = optional(string)
    })
  }))
}

