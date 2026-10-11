variable "datascience_job_runs" {
  description = <<EOT
Map of datascience_job_runs, attributes below
Required:
    - compartment_id
    - job_id
    - project_id
Optional:
    - asynchronous
    - defined_tags
    - display_name
    - freeform_tags
    - opc_parent_rpt_url
    - job_configuration_override_details (block):
        - command_line_arguments (optional)
        - environment_variables (optional)
        - job_type (required)
        - maximum_runtime_in_minutes (optional)
        - startup_probe_details (optional, block):
            - command (required)
            - failure_threshold (optional)
            - initial_delay_in_seconds (optional)
            - job_probe_check_type (required)
            - period_in_seconds (optional)
    - job_environment_configuration_override_details (block):
        - cmd (optional)
        - entrypoint (optional)
        - image (required)
        - image_digest (optional)
        - image_signature_id (optional)
        - job_environment_type (required)
    - job_infrastructure_configuration_override_details (block):
        - block_storage_size_in_gbs (optional)
        - compute_target_id (optional)
        - job_infrastructure_type (required)
        - job_shape_config_details (optional, block):
            - memory_in_gbs (optional)
            - ocpus (optional)
        - resource_configuration (optional, block):
            - resource_limit_configuration (optional, block):
                - memory_in_gbs (optional)
                - ocpus (optional)
            - resource_request_configuration (optional, block):
                - gpus (optional)
                - memory_in_gbs (optional)
                - ocpus (optional)
        - shape_name (optional)
        - subnet_id (optional)
    - job_log_configuration_override_details (block):
        - enable_auto_log_creation (optional)
        - enable_logging (optional)
        - log_group_id (optional)
        - log_id (optional)
    - job_node_configuration_override_details (block):
        - job_network_configuration (optional, block):
            - job_network_type (required)
            - subnet_id (optional)
        - job_node_group_configuration_details_list (optional, block):
            - job_configuration_details (optional, block):
                - command_line_arguments (optional)
                - environment_variables (optional)
                - job_type (required)
                - maximum_runtime_in_minutes (optional)
                - startup_probe_details (optional, block):
                    - command (required)
                    - failure_threshold (optional)
                    - initial_delay_in_seconds (optional)
                    - job_probe_check_type (required)
                    - period_in_seconds (optional)
            - job_environment_configuration_details (optional, block):
                - cmd (optional)
                - entrypoint (optional)
                - image (required)
                - image_digest (optional)
                - image_signature_id (optional)
                - job_environment_type (required)
            - job_infrastructure_configuration_details (optional, block):
                - block_storage_size_in_gbs (optional)
                - compute_target_id (optional)
                - job_infrastructure_type (required)
                - job_shape_config_details (optional, block):
                    - memory_in_gbs (optional)
                    - ocpus (optional)
                - resource_configuration (optional, block):
                    - resource_limit_configuration (optional, block):
                        - memory_in_gbs (optional)
                        - ocpus (optional)
                    - resource_request_configuration (optional, block):
                        - gpus (optional)
                        - memory_in_gbs (optional)
                        - ocpus (optional)
                - shape_name (optional)
                - subnet_id (optional)
            - minimum_success_replicas (optional)
            - name (required)
            - replicas (optional)
        - job_node_type (required)
        - maximum_runtime_in_minutes (optional)
        - startup_order (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id     = string
    job_id             = string
    project_id         = string
    asynchronous       = optional(bool)
    defined_tags       = optional(map(string))
    display_name       = optional(string)
    freeform_tags      = optional(map(string))
    opc_parent_rpt_url = optional(string)
    job_configuration_override_details = optional(object({
      command_line_arguments     = optional(string)
      environment_variables      = optional(map(string))
      job_type                   = string
      maximum_runtime_in_minutes = optional(string)
      startup_probe_details = optional(object({
        command                  = list(string)
        failure_threshold        = optional(number)
        initial_delay_in_seconds = optional(number)
        job_probe_check_type     = string
        period_in_seconds        = optional(number)
      }))
    }))
    job_environment_configuration_override_details = optional(object({
      cmd                  = optional(list(string))
      entrypoint           = optional(list(string))
      image                = string
      image_digest         = optional(string)
      image_signature_id   = optional(string)
      job_environment_type = string
    }))
    job_infrastructure_configuration_override_details = optional(object({
      block_storage_size_in_gbs = optional(number)
      compute_target_id         = optional(string)
      job_infrastructure_type   = string
      job_shape_config_details = optional(object({
        memory_in_gbs = optional(number)
        ocpus         = optional(number)
      }))
      resource_configuration = optional(object({
        resource_limit_configuration = optional(object({
          memory_in_gbs = optional(number)
          ocpus         = optional(number)
        }))
        resource_request_configuration = optional(object({
          gpus          = optional(number)
          memory_in_gbs = optional(number)
          ocpus         = optional(number)
        }))
      }))
      shape_name = optional(string)
      subnet_id  = optional(string)
    }))
    job_log_configuration_override_details = optional(object({
      enable_auto_log_creation = optional(bool)
      enable_logging           = optional(bool)
      log_group_id             = optional(string)
      log_id                   = optional(string)
    }))
    job_node_configuration_override_details = optional(object({
      job_network_configuration = optional(object({
        job_network_type = string
        subnet_id        = optional(string)
      }))
      job_node_group_configuration_details_list = optional(list(object({
        job_configuration_details = optional(object({
          command_line_arguments     = optional(string)
          environment_variables      = optional(map(string))
          job_type                   = string
          maximum_runtime_in_minutes = optional(string)
          startup_probe_details = optional(object({
            command                  = list(string)
            failure_threshold        = optional(number)
            initial_delay_in_seconds = optional(number)
            job_probe_check_type     = string
            period_in_seconds        = optional(number)
          }))
        }))
        job_environment_configuration_details = optional(object({
          cmd                  = optional(list(string))
          entrypoint           = optional(list(string))
          image                = string
          image_digest         = optional(string)
          image_signature_id   = optional(string)
          job_environment_type = string
        }))
        job_infrastructure_configuration_details = optional(object({
          block_storage_size_in_gbs = optional(number)
          compute_target_id         = optional(string)
          job_infrastructure_type   = string
          job_shape_config_details = optional(object({
            memory_in_gbs = optional(number)
            ocpus         = optional(number)
          }))
          resource_configuration = optional(object({
            resource_limit_configuration = optional(object({
              memory_in_gbs = optional(number)
              ocpus         = optional(number)
            }))
            resource_request_configuration = optional(object({
              gpus          = optional(number)
              memory_in_gbs = optional(number)
              ocpus         = optional(number)
            }))
          }))
          shape_name = optional(string)
          subnet_id  = optional(string)
        }))
        minimum_success_replicas = optional(number)
        name                     = string
        replicas                 = optional(number)
      })))
      job_node_type              = string
      maximum_runtime_in_minutes = optional(string)
      startup_order              = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_configuration_override_details == null || (contains([for v in ["DEFAULT", "EMPTY"] : lower(v)], lower(v.job_configuration_override_details.job_type)))
      )
    ])
    error_message = "must be one of: \"DEFAULT\", \"EMPTY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_configuration_override_details == null || (v.job_configuration_override_details.startup_probe_details == null || (contains([for v in ["EXEC"] : lower(v)], lower(v.job_configuration_override_details.startup_probe_details.job_probe_check_type))))
      )
    ])
    error_message = "must be one of: \"EXEC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_environment_configuration_override_details == null || (contains([for v in ["OCIR_CONTAINER"] : lower(v)], lower(v.job_environment_configuration_override_details.job_environment_type)))
      )
    ])
    error_message = "must be one of: \"OCIR_CONTAINER\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_infrastructure_configuration_override_details == null || (contains([for v in ["EMPTY", "MANAGED_COMPUTE_CLUSTER", "ME_STANDALONE", "MULTI_NODE", "STANDALONE"] : lower(v)], lower(v.job_infrastructure_configuration_override_details.job_infrastructure_type)))
      )
    ])
    error_message = "must be one of: \"EMPTY\", \"MANAGED_COMPUTE_CLUSTER\", \"ME_STANDALONE\", \"MULTI_NODE\", \"STANDALONE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_node_configuration_override_details == null || (contains([for v in ["MULTI_NODE"] : lower(v)], lower(v.job_node_configuration_override_details.job_node_type)))
      )
    ])
    error_message = "must be one of: \"MULTI_NODE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_node_configuration_override_details == null || (v.job_node_configuration_override_details.job_network_configuration == null || (contains([for v in ["CUSTOM_NETWORK", "DEFAULT_NETWORK"] : lower(v)], lower(v.job_node_configuration_override_details.job_network_configuration.job_network_type))))
      )
    ])
    error_message = "must be one of: \"CUSTOM_NETWORK\", \"DEFAULT_NETWORK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_node_configuration_override_details == null || (v.job_node_configuration_override_details.job_node_group_configuration_details_list == null || alltrue([for item in v.job_node_configuration_override_details.job_node_group_configuration_details_list : (item.job_configuration_details == null || (contains([for v in ["DEFAULT", "EMPTY"] : lower(v)], lower(item.job_configuration_details.job_type))))]))
      )
    ])
    error_message = "must be one of: \"DEFAULT\", \"EMPTY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_node_configuration_override_details == null || (v.job_node_configuration_override_details.job_node_group_configuration_details_list == null || alltrue([for item in v.job_node_configuration_override_details.job_node_group_configuration_details_list : (item.job_configuration_details == null || (item.job_configuration_details.startup_probe_details == null || (contains([for v in ["EXEC"] : lower(v)], lower(item.job_configuration_details.startup_probe_details.job_probe_check_type)))))]))
      )
    ])
    error_message = "must be one of: \"EXEC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_node_configuration_override_details == null || (v.job_node_configuration_override_details.job_node_group_configuration_details_list == null || alltrue([for item in v.job_node_configuration_override_details.job_node_group_configuration_details_list : (item.job_environment_configuration_details == null || (contains([for v in ["OCIR_CONTAINER"] : lower(v)], lower(item.job_environment_configuration_details.job_environment_type))))]))
      )
    ])
    error_message = "must be one of: \"OCIR_CONTAINER\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_job_runs : (
        v.job_node_configuration_override_details == null || (v.job_node_configuration_override_details.job_node_group_configuration_details_list == null || alltrue([for item in v.job_node_configuration_override_details.job_node_group_configuration_details_list : (item.job_infrastructure_configuration_details == null || (contains([for v in ["EMPTY", "MANAGED_COMPUTE_CLUSTER", "ME_STANDALONE", "MULTI_NODE", "STANDALONE"] : lower(v)], lower(item.job_infrastructure_configuration_details.job_infrastructure_type))))]))
      )
    ])
    error_message = "must be one of: \"EMPTY\", \"MANAGED_COMPUTE_CLUSTER\", \"ME_STANDALONE\", \"MULTI_NODE\", \"STANDALONE\""
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

