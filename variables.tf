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
  # --- Unconfirmed validation candidates, derived from azurerm_monitor_smart_detector_alert_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: detector_type
  #   condition: contains(["FailureAnomaliesDetector", "RequestPerformanceDegradationDetector", "DependencyPerformanceDegradationDetector", "ExceptionVolumeChangedDetector", "TraceSeverityDetector", "MemoryLeakDetector"], value)
  #   message:   must be one of: FailureAnomaliesDetector, RequestPerformanceDegradationDetector, DependencyPerformanceDegradationDetector, ExceptionVolumeChangedDetector, TraceSeverityDetector, MemoryLeakDetector
  # path: scope_resource_ids[*]
  #   source:    [from azure.ValidateResourceID] !ok
  # path: scope_resource_ids[*]
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: severity
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: frequency
  #   source:    [from commonValidate.ISO8601Duration] !ok
  # path: frequency
  #   source:    [from commonValidate.ISO8601Duration] err != nil
  # path: action_group.ids[*]
  #   source:    [from validate.ActionGroupID] !ok
  # path: action_group.ids[*]
  #   source:    [from validate.ActionGroupID] err != nil
  # path: action_group.webhook_payload
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: throttling_duration
  #   source:    [from commonValidate.ISO8601Duration] !ok
  # path: throttling_duration
  #   source:    [from commonValidate.ISO8601Duration] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

