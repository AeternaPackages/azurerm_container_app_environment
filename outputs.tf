# --- azurerm_container_app_environment ---
output "container_app_environments" {
  description = "All container_app_environment resources"
  value       = module.container_app_environments.container_app_environments
  sensitive   = true
}
output "container_app_environments_custom_domain_verification_id" {
  description = "List of custom_domain_verification_id values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.custom_domain_verification_id]
}
output "container_app_environments_dapr_application_insights_connection_string" {
  description = "List of dapr_application_insights_connection_string values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.dapr_application_insights_connection_string]
  sensitive   = true
}
output "container_app_environments_default_domain" {
  description = "List of default_domain values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.default_domain]
}
output "container_app_environments_docker_bridge_cidr" {
  description = "List of docker_bridge_cidr values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.docker_bridge_cidr]
}
output "container_app_environments_identity" {
  description = "List of identity values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.identity]
}
output "container_app_environments_infrastructure_resource_group_name" {
  description = "List of infrastructure_resource_group_name values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.infrastructure_resource_group_name]
}
output "container_app_environments_infrastructure_subnet_id" {
  description = "List of infrastructure_subnet_id values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.infrastructure_subnet_id]
}
output "container_app_environments_internal_load_balancer_enabled" {
  description = "List of internal_load_balancer_enabled values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.internal_load_balancer_enabled]
}
output "container_app_environments_location" {
  description = "List of location values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.location]
}
output "container_app_environments_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.log_analytics_workspace_id]
}
output "container_app_environments_logs_destination" {
  description = "List of logs_destination values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.logs_destination]
}
output "container_app_environments_mutual_tls_enabled" {
  description = "List of mutual_tls_enabled values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.mutual_tls_enabled]
}
output "container_app_environments_name" {
  description = "List of name values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.name]
}
output "container_app_environments_platform_reserved_cidr" {
  description = "List of platform_reserved_cidr values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.platform_reserved_cidr]
}
output "container_app_environments_platform_reserved_dns_ip_address" {
  description = "List of platform_reserved_dns_ip_address values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.platform_reserved_dns_ip_address]
}
output "container_app_environments_public_network_access" {
  description = "List of public_network_access values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.public_network_access]
}
output "container_app_environments_resource_group_name" {
  description = "List of resource_group_name values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.resource_group_name]
}
output "container_app_environments_static_ip_address" {
  description = "List of static_ip_address values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.static_ip_address]
}
output "container_app_environments_tags" {
  description = "List of tags values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.tags]
}
output "container_app_environments_workload_profile" {
  description = "List of workload_profile values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.workload_profile]
}
output "container_app_environments_zone_redundancy_enabled" {
  description = "List of zone_redundancy_enabled values across all container_app_environments"
  value       = [for k, v in module.container_app_environments.container_app_environments : v.zone_redundancy_enabled]
}


# --- azurerm_container_app ---
output "container_apps" {
  description = "All container_app resources"
  value       = module.container_apps.container_apps
  sensitive   = true
}
output "container_apps_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.container_app_environment_id]
}
output "container_apps_custom_domain_verification_id" {
  description = "List of custom_domain_verification_id values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.custom_domain_verification_id]
  sensitive   = true
}
output "container_apps_dapr" {
  description = "List of dapr values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.dapr]
}
output "container_apps_identity" {
  description = "List of identity values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.identity]
}
output "container_apps_ingress" {
  description = "List of ingress values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.ingress]
}
output "container_apps_latest_revision_fqdn" {
  description = "List of latest_revision_fqdn values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.latest_revision_fqdn]
}
output "container_apps_latest_revision_name" {
  description = "List of latest_revision_name values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.latest_revision_name]
}
output "container_apps_location" {
  description = "List of location values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.location]
}
output "container_apps_max_inactive_revisions" {
  description = "List of max_inactive_revisions values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.max_inactive_revisions]
}
output "container_apps_name" {
  description = "List of name values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.name]
}
output "container_apps_outbound_ip_addresses" {
  description = "List of outbound_ip_addresses values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.outbound_ip_addresses]
}
output "container_apps_registry" {
  description = "List of registry values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.registry]
}
output "container_apps_resource_group_name" {
  description = "List of resource_group_name values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.resource_group_name]
}
output "container_apps_revision_mode" {
  description = "List of revision_mode values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.revision_mode]
}
output "container_apps_secret" {
  description = "List of secret values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.secret]
  sensitive   = true
}
output "container_apps_tags" {
  description = "List of tags values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.tags]
}
output "container_apps_template" {
  description = "List of template values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.template]
}
output "container_apps_workload_profile_name" {
  description = "List of workload_profile_name values across all container_apps"
  value       = [for k, v in module.container_apps.container_apps : v.workload_profile_name]
}


# --- azurerm_container_app_environment_certificate ---
output "container_app_environment_certificates" {
  description = "All container_app_environment_certificate resources"
  value       = module.container_app_environment_certificates.container_app_environment_certificates
  sensitive   = true
}
output "container_app_environment_certificates_certificate_blob_base64" {
  description = "List of certificate_blob_base64 values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.certificate_blob_base64]
}
output "container_app_environment_certificates_certificate_key_vault" {
  description = "List of certificate_key_vault values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.certificate_key_vault]
}
output "container_app_environment_certificates_certificate_password" {
  description = "List of certificate_password values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.certificate_password]
  sensitive   = true
}
output "container_app_environment_certificates_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.container_app_environment_id]
}
output "container_app_environment_certificates_expiration_date" {
  description = "List of expiration_date values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.expiration_date]
}
output "container_app_environment_certificates_issue_date" {
  description = "List of issue_date values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.issue_date]
}
output "container_app_environment_certificates_issuer" {
  description = "List of issuer values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.issuer]
}
output "container_app_environment_certificates_name" {
  description = "List of name values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.name]
}
output "container_app_environment_certificates_subject_name" {
  description = "List of subject_name values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.subject_name]
}
output "container_app_environment_certificates_tags" {
  description = "List of tags values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.tags]
}
output "container_app_environment_certificates_thumbprint" {
  description = "List of thumbprint values across all container_app_environment_certificates"
  value       = [for k, v in module.container_app_environment_certificates.container_app_environment_certificates : v.thumbprint]
}


# --- azurerm_container_app_environment_custom_domain ---
output "container_app_environment_custom_domains" {
  description = "All container_app_environment_custom_domain resources"
  value       = module.container_app_environment_custom_domains.container_app_environment_custom_domains
  sensitive   = true
}
output "container_app_environment_custom_domains_certificate_blob_base64" {
  description = "List of certificate_blob_base64 values across all container_app_environment_custom_domains"
  value       = [for k, v in module.container_app_environment_custom_domains.container_app_environment_custom_domains : v.certificate_blob_base64]
}
output "container_app_environment_custom_domains_certificate_password" {
  description = "List of certificate_password values across all container_app_environment_custom_domains"
  value       = [for k, v in module.container_app_environment_custom_domains.container_app_environment_custom_domains : v.certificate_password]
  sensitive   = true
}
output "container_app_environment_custom_domains_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_environment_custom_domains"
  value       = [for k, v in module.container_app_environment_custom_domains.container_app_environment_custom_domains : v.container_app_environment_id]
}
output "container_app_environment_custom_domains_dns_suffix" {
  description = "List of dns_suffix values across all container_app_environment_custom_domains"
  value       = [for k, v in module.container_app_environment_custom_domains.container_app_environment_custom_domains : v.dns_suffix]
}


# --- azurerm_container_app_environment_dapr_component ---
output "container_app_environment_dapr_components" {
  description = "All container_app_environment_dapr_component resources"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components
  sensitive   = true
}
output "container_app_environment_dapr_components_component_type" {
  description = "List of component_type values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.component_type]
}
output "container_app_environment_dapr_components_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.container_app_environment_id]
}
output "container_app_environment_dapr_components_ignore_errors" {
  description = "List of ignore_errors values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.ignore_errors]
}
output "container_app_environment_dapr_components_init_timeout" {
  description = "List of init_timeout values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.init_timeout]
}
output "container_app_environment_dapr_components_metadata" {
  description = "List of metadata values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.metadata]
}
output "container_app_environment_dapr_components_name" {
  description = "List of name values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.name]
}
output "container_app_environment_dapr_components_scopes" {
  description = "List of scopes values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.scopes]
}
output "container_app_environment_dapr_components_secret" {
  description = "List of secret values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.secret]
  sensitive   = true
}
output "container_app_environment_dapr_components_version" {
  description = "List of version values across all container_app_environment_dapr_components"
  value       = [for k, v in module.container_app_environment_dapr_components.container_app_environment_dapr_components : v.version]
}


# --- azurerm_container_app_environment_managed_certificate ---
output "container_app_environment_managed_certificates" {
  description = "All container_app_environment_managed_certificate resources"
  value       = module.container_app_environment_managed_certificates.container_app_environment_managed_certificates
}
output "container_app_environment_managed_certificates_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_environment_managed_certificates"
  value       = [for k, v in module.container_app_environment_managed_certificates.container_app_environment_managed_certificates : v.container_app_environment_id]
}
output "container_app_environment_managed_certificates_domain_control_validation" {
  description = "List of domain_control_validation values across all container_app_environment_managed_certificates"
  value       = [for k, v in module.container_app_environment_managed_certificates.container_app_environment_managed_certificates : v.domain_control_validation]
}
output "container_app_environment_managed_certificates_name" {
  description = "List of name values across all container_app_environment_managed_certificates"
  value       = [for k, v in module.container_app_environment_managed_certificates.container_app_environment_managed_certificates : v.name]
}
output "container_app_environment_managed_certificates_subject_name" {
  description = "List of subject_name values across all container_app_environment_managed_certificates"
  value       = [for k, v in module.container_app_environment_managed_certificates.container_app_environment_managed_certificates : v.subject_name]
}
output "container_app_environment_managed_certificates_tags" {
  description = "List of tags values across all container_app_environment_managed_certificates"
  value       = [for k, v in module.container_app_environment_managed_certificates.container_app_environment_managed_certificates : v.tags]
}
output "container_app_environment_managed_certificates_validation_token" {
  description = "List of validation_token values across all container_app_environment_managed_certificates"
  value       = [for k, v in module.container_app_environment_managed_certificates.container_app_environment_managed_certificates : v.validation_token]
}


# --- azurerm_container_app_environment_storage ---
output "container_app_environment_storages" {
  description = "All container_app_environment_storage resources"
  value       = module.container_app_environment_storages.container_app_environment_storages
  sensitive   = true
}
output "container_app_environment_storages_access_key" {
  description = "List of access_key values across all container_app_environment_storages"
  value       = [for k, v in module.container_app_environment_storages.container_app_environment_storages : v.access_key]
  sensitive   = true
}
output "container_app_environment_storages_access_mode" {
  description = "List of access_mode values across all container_app_environment_storages"
  value       = [for k, v in module.container_app_environment_storages.container_app_environment_storages : v.access_mode]
}
output "container_app_environment_storages_account_name" {
  description = "List of account_name values across all container_app_environment_storages"
  value       = [for k, v in module.container_app_environment_storages.container_app_environment_storages : v.account_name]
}
output "container_app_environment_storages_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_environment_storages"
  value       = [for k, v in module.container_app_environment_storages.container_app_environment_storages : v.container_app_environment_id]
}
output "container_app_environment_storages_name" {
  description = "List of name values across all container_app_environment_storages"
  value       = [for k, v in module.container_app_environment_storages.container_app_environment_storages : v.name]
}
output "container_app_environment_storages_nfs_server_url" {
  description = "List of nfs_server_url values across all container_app_environment_storages"
  value       = [for k, v in module.container_app_environment_storages.container_app_environment_storages : v.nfs_server_url]
}
output "container_app_environment_storages_share_name" {
  description = "List of share_name values across all container_app_environment_storages"
  value       = [for k, v in module.container_app_environment_storages.container_app_environment_storages : v.share_name]
}


# --- azurerm_container_app_job ---
output "container_app_jobs" {
  description = "All container_app_job resources"
  value       = module.container_app_jobs.container_app_jobs
  sensitive   = true
}
output "container_app_jobs_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.container_app_environment_id]
}
output "container_app_jobs_event_stream_endpoint" {
  description = "List of event_stream_endpoint values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.event_stream_endpoint]
}
output "container_app_jobs_event_trigger_config" {
  description = "List of event_trigger_config values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.event_trigger_config]
}
output "container_app_jobs_identity" {
  description = "List of identity values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.identity]
}
output "container_app_jobs_location" {
  description = "List of location values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.location]
}
output "container_app_jobs_manual_trigger_config" {
  description = "List of manual_trigger_config values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.manual_trigger_config]
}
output "container_app_jobs_name" {
  description = "List of name values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.name]
}
output "container_app_jobs_outbound_ip_addresses" {
  description = "List of outbound_ip_addresses values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.outbound_ip_addresses]
}
output "container_app_jobs_registry" {
  description = "List of registry values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.registry]
}
output "container_app_jobs_replica_retry_limit" {
  description = "List of replica_retry_limit values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.replica_retry_limit]
}
output "container_app_jobs_replica_timeout_in_seconds" {
  description = "List of replica_timeout_in_seconds values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.replica_timeout_in_seconds]
}
output "container_app_jobs_resource_group_name" {
  description = "List of resource_group_name values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.resource_group_name]
}
output "container_app_jobs_schedule_trigger_config" {
  description = "List of schedule_trigger_config values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.schedule_trigger_config]
}
output "container_app_jobs_secret" {
  description = "List of secret values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.secret]
  sensitive   = true
}
output "container_app_jobs_tags" {
  description = "List of tags values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.tags]
}
output "container_app_jobs_template" {
  description = "List of template values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.template]
}
output "container_app_jobs_workload_profile_name" {
  description = "List of workload_profile_name values across all container_app_jobs"
  value       = [for k, v in module.container_app_jobs.container_app_jobs : v.workload_profile_name]
}


# --- azurerm_container_app_custom_domain ---
output "container_app_custom_domains" {
  description = "All container_app_custom_domain resources"
  value       = module.container_app_custom_domains.container_app_custom_domains
}
output "container_app_custom_domains_certificate_binding_type" {
  description = "List of certificate_binding_type values across all container_app_custom_domains"
  value       = [for k, v in module.container_app_custom_domains.container_app_custom_domains : v.certificate_binding_type]
}
output "container_app_custom_domains_container_app_environment_certificate_id" {
  description = "List of container_app_environment_certificate_id values across all container_app_custom_domains"
  value       = [for k, v in module.container_app_custom_domains.container_app_custom_domains : v.container_app_environment_certificate_id]
}
output "container_app_custom_domains_container_app_environment_managed_certificate_id" {
  description = "List of container_app_environment_managed_certificate_id values across all container_app_custom_domains"
  value       = [for k, v in module.container_app_custom_domains.container_app_custom_domains : v.container_app_environment_managed_certificate_id]
}
output "container_app_custom_domains_container_app_id" {
  description = "List of container_app_id values across all container_app_custom_domains"
  value       = [for k, v in module.container_app_custom_domains.container_app_custom_domains : v.container_app_id]
}
output "container_app_custom_domains_name" {
  description = "List of name values across all container_app_custom_domains"
  value       = [for k, v in module.container_app_custom_domains.container_app_custom_domains : v.name]
}



