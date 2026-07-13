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
    enabled             = optional(bool)
    tags                = optional(map(string))
    throttling_duration = optional(string)
    action_group = object({
      email_subject   = optional(string)
      ids             = set(string)
      webhook_payload = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.monitor_smart_detector_alert_rules : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_smart_detector_alert_rules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_smart_detector_alert_rules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_smart_detector_alert_rules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_smart_detector_alert_rules : (
        contains(["FailureAnomaliesDetector", "RequestPerformanceDegradationDetector", "DependencyPerformanceDegradationDetector", "ExceptionVolumeChangedDetector", "TraceSeverityDetector", "MemoryLeakDetector"], v.detector_type)
      )
    ])
    error_message = "must be one of: FailureAnomaliesDetector, RequestPerformanceDegradationDetector, DependencyPerformanceDegradationDetector, ExceptionVolumeChangedDetector, TraceSeverityDetector, MemoryLeakDetector"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_smart_detector_alert_rules : (
        v.action_group.webhook_payload == null || (can(jsondecode(v.action_group.webhook_payload)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_smart_detector_alert_rules : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_smart_detector_alert_rules : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

