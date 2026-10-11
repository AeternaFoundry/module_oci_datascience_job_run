output "datascience_job_runs_id" {
  description = "Map of id values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no id are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_job_runs_asynchronous" {
  description = "Map of asynchronous values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no asynchronous are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.asynchronous if v.asynchronous != null }
}
output "datascience_job_runs_compartment_id" {
  description = "Map of compartment_id values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datascience_job_runs_created_by" {
  description = "Map of created_by values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no created_by are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "datascience_job_runs_defined_tags" {
  description = "Map of defined_tags values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "datascience_job_runs_display_name" {
  description = "Map of display_name values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no display_name are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "datascience_job_runs_freeform_tags" {
  description = "Map of freeform_tags values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "datascience_job_runs_job_configuration_override_details" {
  description = "Map of job_configuration_override_details values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no job_configuration_override_details are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => one(v.job_configuration_override_details) if v.job_configuration_override_details != null && length(v.job_configuration_override_details) > 0 }
}
output "datascience_job_runs_job_environment_configuration_override_details" {
  description = "Map of job_environment_configuration_override_details values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no job_environment_configuration_override_details are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => one(v.job_environment_configuration_override_details) if v.job_environment_configuration_override_details != null && length(v.job_environment_configuration_override_details) > 0 }
}
output "datascience_job_runs_job_id" {
  description = "Map of job_id values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no job_id are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.job_id if v.job_id != null && length(v.job_id) > 0 }
}
output "datascience_job_runs_job_infrastructure_configuration_details" {
  description = "Map of job_infrastructure_configuration_details values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no job_infrastructure_configuration_details are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.job_infrastructure_configuration_details if v.job_infrastructure_configuration_details != null && length(v.job_infrastructure_configuration_details) > 0 }
}
output "datascience_job_runs_job_infrastructure_configuration_override_details" {
  description = "Map of job_infrastructure_configuration_override_details values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no job_infrastructure_configuration_override_details are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => one(v.job_infrastructure_configuration_override_details) if v.job_infrastructure_configuration_override_details != null && length(v.job_infrastructure_configuration_override_details) > 0 }
}
output "datascience_job_runs_job_log_configuration_override_details" {
  description = "Map of job_log_configuration_override_details values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no job_log_configuration_override_details are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => one(v.job_log_configuration_override_details) if v.job_log_configuration_override_details != null && length(v.job_log_configuration_override_details) > 0 }
}
output "datascience_job_runs_job_node_configuration_override_details" {
  description = "Map of job_node_configuration_override_details values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no job_node_configuration_override_details are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => one(v.job_node_configuration_override_details) if v.job_node_configuration_override_details != null && length(v.job_node_configuration_override_details) > 0 }
}
output "datascience_job_runs_job_storage_mount_configuration_details_list" {
  description = "Map of job_storage_mount_configuration_details_list values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no job_storage_mount_configuration_details_list are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.job_storage_mount_configuration_details_list if v.job_storage_mount_configuration_details_list != null && length(v.job_storage_mount_configuration_details_list) > 0 }
}
output "datascience_job_runs_lifecycle_details" {
  description = "Map of lifecycle_details values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "datascience_job_runs_log_details" {
  description = "Map of log_details values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no log_details are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.log_details if v.log_details != null && length(v.log_details) > 0 }
}
output "datascience_job_runs_node_group_details_list" {
  description = "Map of node_group_details_list values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no node_group_details_list are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.node_group_details_list if v.node_group_details_list != null && length(v.node_group_details_list) > 0 }
}
output "datascience_job_runs_opc_parent_rpt_url" {
  description = "Map of opc_parent_rpt_url values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no opc_parent_rpt_url are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.opc_parent_rpt_url if v.opc_parent_rpt_url != null && length(v.opc_parent_rpt_url) > 0 }
}
output "datascience_job_runs_project_id" {
  description = "Map of project_id values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no project_id are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "datascience_job_runs_state" {
  description = "Map of state values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no state are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "datascience_job_runs_time_accepted" {
  description = "Map of time_accepted values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no time_accepted are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.time_accepted if v.time_accepted != null && length(v.time_accepted) > 0 }
}
output "datascience_job_runs_time_finished" {
  description = "Map of time_finished values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no time_finished are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.time_finished if v.time_finished != null && length(v.time_finished) > 0 }
}
output "datascience_job_runs_time_started" {
  description = "Map of time_started values across all datascience_job_runs, keyed the same as var.datascience_job_runs except keys with no time_started are omitted"
  value       = { for k, v in oci_datascience_job_run.datascience_job_runs : k => v.time_started if v.time_started != null && length(v.time_started) > 0 }
}

