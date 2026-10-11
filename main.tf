resource "oci_datascience_job_run" "datascience_job_runs" {
  for_each = var.datascience_job_runs

  compartment_id     = each.value.compartment_id
  job_id             = each.value.job_id
  project_id         = each.value.project_id
  asynchronous       = each.value.asynchronous
  defined_tags       = each.value.defined_tags
  display_name       = each.value.display_name
  freeform_tags      = each.value.freeform_tags
  opc_parent_rpt_url = each.value.opc_parent_rpt_url

  dynamic "job_configuration_override_details" {
    for_each = each.value.job_configuration_override_details != null ? [each.value.job_configuration_override_details] : []
    content {
      command_line_arguments     = job_configuration_override_details.value.command_line_arguments
      environment_variables      = job_configuration_override_details.value.environment_variables
      job_type                   = job_configuration_override_details.value.job_type
      maximum_runtime_in_minutes = job_configuration_override_details.value.maximum_runtime_in_minutes
      dynamic "startup_probe_details" {
        for_each = job_configuration_override_details.value.startup_probe_details != null ? [job_configuration_override_details.value.startup_probe_details] : []
        content {
          command                  = startup_probe_details.value.command
          failure_threshold        = startup_probe_details.value.failure_threshold
          initial_delay_in_seconds = startup_probe_details.value.initial_delay_in_seconds
          job_probe_check_type     = startup_probe_details.value.job_probe_check_type
          period_in_seconds        = startup_probe_details.value.period_in_seconds
        }
      }
    }
  }

  dynamic "job_environment_configuration_override_details" {
    for_each = each.value.job_environment_configuration_override_details != null ? [each.value.job_environment_configuration_override_details] : []
    content {
      cmd                  = job_environment_configuration_override_details.value.cmd
      entrypoint           = job_environment_configuration_override_details.value.entrypoint
      image                = job_environment_configuration_override_details.value.image
      image_digest         = job_environment_configuration_override_details.value.image_digest
      image_signature_id   = job_environment_configuration_override_details.value.image_signature_id
      job_environment_type = job_environment_configuration_override_details.value.job_environment_type
    }
  }

  dynamic "job_infrastructure_configuration_override_details" {
    for_each = each.value.job_infrastructure_configuration_override_details != null ? [each.value.job_infrastructure_configuration_override_details] : []
    content {
      block_storage_size_in_gbs = job_infrastructure_configuration_override_details.value.block_storage_size_in_gbs
      compute_target_id         = job_infrastructure_configuration_override_details.value.compute_target_id
      job_infrastructure_type   = job_infrastructure_configuration_override_details.value.job_infrastructure_type
      dynamic "job_shape_config_details" {
        for_each = job_infrastructure_configuration_override_details.value.job_shape_config_details != null ? [job_infrastructure_configuration_override_details.value.job_shape_config_details] : []
        content {
          memory_in_gbs = job_shape_config_details.value.memory_in_gbs
          ocpus         = job_shape_config_details.value.ocpus
        }
      }
      dynamic "resource_configuration" {
        for_each = job_infrastructure_configuration_override_details.value.resource_configuration != null ? [job_infrastructure_configuration_override_details.value.resource_configuration] : []
        content {
          dynamic "resource_limit_configuration" {
            for_each = resource_configuration.value.resource_limit_configuration != null ? [resource_configuration.value.resource_limit_configuration] : []
            content {
              memory_in_gbs = resource_limit_configuration.value.memory_in_gbs
              ocpus         = resource_limit_configuration.value.ocpus
            }
          }
          dynamic "resource_request_configuration" {
            for_each = resource_configuration.value.resource_request_configuration != null ? [resource_configuration.value.resource_request_configuration] : []
            content {
              gpus          = resource_request_configuration.value.gpus
              memory_in_gbs = resource_request_configuration.value.memory_in_gbs
              ocpus         = resource_request_configuration.value.ocpus
            }
          }
        }
      }
      shape_name = job_infrastructure_configuration_override_details.value.shape_name
      subnet_id  = job_infrastructure_configuration_override_details.value.subnet_id
    }
  }

  dynamic "job_log_configuration_override_details" {
    for_each = each.value.job_log_configuration_override_details != null ? [each.value.job_log_configuration_override_details] : []
    content {
      enable_auto_log_creation = job_log_configuration_override_details.value.enable_auto_log_creation
      enable_logging           = job_log_configuration_override_details.value.enable_logging
      log_group_id             = job_log_configuration_override_details.value.log_group_id
      log_id                   = job_log_configuration_override_details.value.log_id
    }
  }

  dynamic "job_node_configuration_override_details" {
    for_each = each.value.job_node_configuration_override_details != null ? [each.value.job_node_configuration_override_details] : []
    content {
      dynamic "job_network_configuration" {
        for_each = job_node_configuration_override_details.value.job_network_configuration != null ? [job_node_configuration_override_details.value.job_network_configuration] : []
        content {
          job_network_type = job_network_configuration.value.job_network_type
          subnet_id        = job_network_configuration.value.subnet_id
        }
      }
      dynamic "job_node_group_configuration_details_list" {
        for_each = job_node_configuration_override_details.value.job_node_group_configuration_details_list != null ? job_node_configuration_override_details.value.job_node_group_configuration_details_list : []
        content {
          dynamic "job_configuration_details" {
            for_each = job_node_group_configuration_details_list.value.job_configuration_details != null ? [job_node_group_configuration_details_list.value.job_configuration_details] : []
            content {
              command_line_arguments     = job_configuration_details.value.command_line_arguments
              environment_variables      = job_configuration_details.value.environment_variables
              job_type                   = job_configuration_details.value.job_type
              maximum_runtime_in_minutes = job_configuration_details.value.maximum_runtime_in_minutes
              dynamic "startup_probe_details" {
                for_each = job_configuration_details.value.startup_probe_details != null ? [job_configuration_details.value.startup_probe_details] : []
                content {
                  command                  = startup_probe_details.value.command
                  failure_threshold        = startup_probe_details.value.failure_threshold
                  initial_delay_in_seconds = startup_probe_details.value.initial_delay_in_seconds
                  job_probe_check_type     = startup_probe_details.value.job_probe_check_type
                  period_in_seconds        = startup_probe_details.value.period_in_seconds
                }
              }
            }
          }
          dynamic "job_environment_configuration_details" {
            for_each = job_node_group_configuration_details_list.value.job_environment_configuration_details != null ? [job_node_group_configuration_details_list.value.job_environment_configuration_details] : []
            content {
              cmd                  = job_environment_configuration_details.value.cmd
              entrypoint           = job_environment_configuration_details.value.entrypoint
              image                = job_environment_configuration_details.value.image
              image_digest         = job_environment_configuration_details.value.image_digest
              image_signature_id   = job_environment_configuration_details.value.image_signature_id
              job_environment_type = job_environment_configuration_details.value.job_environment_type
            }
          }
          dynamic "job_infrastructure_configuration_details" {
            for_each = job_node_group_configuration_details_list.value.job_infrastructure_configuration_details != null ? [job_node_group_configuration_details_list.value.job_infrastructure_configuration_details] : []
            content {
              block_storage_size_in_gbs = job_infrastructure_configuration_details.value.block_storage_size_in_gbs
              compute_target_id         = job_infrastructure_configuration_details.value.compute_target_id
              job_infrastructure_type   = job_infrastructure_configuration_details.value.job_infrastructure_type
              dynamic "job_shape_config_details" {
                for_each = job_infrastructure_configuration_details.value.job_shape_config_details != null ? [job_infrastructure_configuration_details.value.job_shape_config_details] : []
                content {
                  memory_in_gbs = job_shape_config_details.value.memory_in_gbs
                  ocpus         = job_shape_config_details.value.ocpus
                }
              }
              dynamic "resource_configuration" {
                for_each = job_infrastructure_configuration_details.value.resource_configuration != null ? [job_infrastructure_configuration_details.value.resource_configuration] : []
                content {
                  dynamic "resource_limit_configuration" {
                    for_each = resource_configuration.value.resource_limit_configuration != null ? [resource_configuration.value.resource_limit_configuration] : []
                    content {
                      memory_in_gbs = resource_limit_configuration.value.memory_in_gbs
                      ocpus         = resource_limit_configuration.value.ocpus
                    }
                  }
                  dynamic "resource_request_configuration" {
                    for_each = resource_configuration.value.resource_request_configuration != null ? [resource_configuration.value.resource_request_configuration] : []
                    content {
                      gpus          = resource_request_configuration.value.gpus
                      memory_in_gbs = resource_request_configuration.value.memory_in_gbs
                      ocpus         = resource_request_configuration.value.ocpus
                    }
                  }
                }
              }
              shape_name = job_infrastructure_configuration_details.value.shape_name
              subnet_id  = job_infrastructure_configuration_details.value.subnet_id
            }
          }
          minimum_success_replicas = job_node_group_configuration_details_list.value.minimum_success_replicas
          name                     = job_node_group_configuration_details_list.value.name
          replicas                 = job_node_group_configuration_details_list.value.replicas
        }
      }
      job_node_type              = job_node_configuration_override_details.value.job_node_type
      maximum_runtime_in_minutes = job_node_configuration_override_details.value.maximum_runtime_in_minutes
      startup_order              = job_node_configuration_override_details.value.startup_order
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

