# --- azurerm_container_app_environment ---
output "container_app_environments_id" {
  description = "Map of id values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_id
}

output "container_app_environments_custom_domain_verification_id" {
  description = "Map of custom_domain_verification_id values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_custom_domain_verification_id
}

output "container_app_environments_dapr_application_insights_connection_string" {
  description = "Map of dapr_application_insights_connection_string values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_dapr_application_insights_connection_string
  sensitive   = true
}

output "container_app_environments_default_domain" {
  description = "Map of default_domain values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_default_domain
}

output "container_app_environments_docker_bridge_cidr" {
  description = "Map of docker_bridge_cidr values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_docker_bridge_cidr
}

output "container_app_environments_identity" {
  description = "Map of identity values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_identity
}

output "container_app_environments_infrastructure_resource_group_name" {
  description = "Map of infrastructure_resource_group_name values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_infrastructure_resource_group_name
}

output "container_app_environments_infrastructure_subnet_id" {
  description = "Map of infrastructure_subnet_id values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_infrastructure_subnet_id
}

output "container_app_environments_internal_load_balancer_enabled" {
  description = "Map of internal_load_balancer_enabled values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_internal_load_balancer_enabled
}

output "container_app_environments_location" {
  description = "Map of location values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_location
}

output "container_app_environments_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_log_analytics_workspace_id
}

output "container_app_environments_logs_destination" {
  description = "Map of logs_destination values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_logs_destination
}

output "container_app_environments_mutual_tls_enabled" {
  description = "Map of mutual_tls_enabled values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_mutual_tls_enabled
}

output "container_app_environments_name" {
  description = "Map of name values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_name
}

output "container_app_environments_platform_reserved_cidr" {
  description = "Map of platform_reserved_cidr values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_platform_reserved_cidr
}

output "container_app_environments_platform_reserved_dns_ip_address" {
  description = "Map of platform_reserved_dns_ip_address values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_platform_reserved_dns_ip_address
}

output "container_app_environments_public_network_access" {
  description = "Map of public_network_access values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_public_network_access
}

output "container_app_environments_resource_group_name" {
  description = "Map of resource_group_name values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_resource_group_name
}

output "container_app_environments_static_ip_address" {
  description = "Map of static_ip_address values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_static_ip_address
}

output "container_app_environments_tags" {
  description = "Map of tags values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_tags
}

output "container_app_environments_workload_profile" {
  description = "Map of workload_profile values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_workload_profile
}

output "container_app_environments_zone_redundancy_enabled" {
  description = "Map of zone_redundancy_enabled values across all container_app_environments, keyed the same as var.container_app_environments"
  value       = module.container_app_environments.container_app_environments_zone_redundancy_enabled
}

# --- azurerm_container_app ---
output "container_apps_id" {
  description = "Map of id values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_id
}

output "container_apps_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_container_app_environment_id
}

output "container_apps_custom_domain_verification_id" {
  description = "Map of custom_domain_verification_id values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_custom_domain_verification_id
  sensitive   = true
}

output "container_apps_dapr" {
  description = "Map of dapr values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_dapr
}

output "container_apps_identity" {
  description = "Map of identity values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_identity
}

output "container_apps_ingress" {
  description = "Map of ingress values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_ingress
}

output "container_apps_latest_revision_fqdn" {
  description = "Map of latest_revision_fqdn values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_latest_revision_fqdn
}

output "container_apps_latest_revision_name" {
  description = "Map of latest_revision_name values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_latest_revision_name
}

output "container_apps_location" {
  description = "Map of location values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_location
}

output "container_apps_max_inactive_revisions" {
  description = "Map of max_inactive_revisions values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_max_inactive_revisions
}

output "container_apps_name" {
  description = "Map of name values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_name
}

output "container_apps_outbound_ip_addresses" {
  description = "Map of outbound_ip_addresses values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_outbound_ip_addresses
}

output "container_apps_registry" {
  description = "Map of registry values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_registry
}

output "container_apps_resource_group_name" {
  description = "Map of resource_group_name values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_resource_group_name
}

output "container_apps_revision_mode" {
  description = "Map of revision_mode values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_revision_mode
}

output "container_apps_secret" {
  description = "Map of secret values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_secret
  sensitive   = true
}

output "container_apps_tags" {
  description = "Map of tags values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_tags
}

output "container_apps_template" {
  description = "Map of template values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_template
}

output "container_apps_workload_profile_name" {
  description = "Map of workload_profile_name values across all container_apps, keyed the same as var.container_apps"
  value       = module.container_apps.container_apps_workload_profile_name
}

# --- azurerm_container_app_environment_certificate ---
output "container_app_environment_certificates_id" {
  description = "Map of id values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_id
}

output "container_app_environment_certificates_certificate_blob_base64" {
  description = "Map of certificate_blob_base64 values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_certificate_blob_base64
}

output "container_app_environment_certificates_certificate_key_vault" {
  description = "Map of certificate_key_vault values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_certificate_key_vault
}

output "container_app_environment_certificates_certificate_password" {
  description = "Map of certificate_password values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_certificate_password
  sensitive   = true
}

output "container_app_environment_certificates_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_container_app_environment_id
}

output "container_app_environment_certificates_expiration_date" {
  description = "Map of expiration_date values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_expiration_date
}

output "container_app_environment_certificates_issue_date" {
  description = "Map of issue_date values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_issue_date
}

output "container_app_environment_certificates_issuer" {
  description = "Map of issuer values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_issuer
}

output "container_app_environment_certificates_name" {
  description = "Map of name values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_name
}

output "container_app_environment_certificates_subject_name" {
  description = "Map of subject_name values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_subject_name
}

output "container_app_environment_certificates_tags" {
  description = "Map of tags values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_tags
}

output "container_app_environment_certificates_thumbprint" {
  description = "Map of thumbprint values across all container_app_environment_certificates, keyed the same as var.container_app_environment_certificates"
  value       = module.container_app_environment_certificates.container_app_environment_certificates_thumbprint
}

# --- azurerm_container_app_environment_custom_domain ---
output "container_app_environment_custom_domains_id" {
  description = "Map of id values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = module.container_app_environment_custom_domains.container_app_environment_custom_domains_id
}

output "container_app_environment_custom_domains_certificate_blob_base64" {
  description = "Map of certificate_blob_base64 values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = module.container_app_environment_custom_domains.container_app_environment_custom_domains_certificate_blob_base64
}

output "container_app_environment_custom_domains_certificate_password" {
  description = "Map of certificate_password values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = module.container_app_environment_custom_domains.container_app_environment_custom_domains_certificate_password
  sensitive   = true
}

output "container_app_environment_custom_domains_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = module.container_app_environment_custom_domains.container_app_environment_custom_domains_container_app_environment_id
}

output "container_app_environment_custom_domains_dns_suffix" {
  description = "Map of dns_suffix values across all container_app_environment_custom_domains, keyed the same as var.container_app_environment_custom_domains"
  value       = module.container_app_environment_custom_domains.container_app_environment_custom_domains_dns_suffix
}

# --- azurerm_container_app_environment_dapr_component ---
output "container_app_environment_dapr_components_id" {
  description = "Map of id values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_id
}

output "container_app_environment_dapr_components_component_type" {
  description = "Map of component_type values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_component_type
}

output "container_app_environment_dapr_components_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_container_app_environment_id
}

output "container_app_environment_dapr_components_ignore_errors" {
  description = "Map of ignore_errors values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_ignore_errors
}

output "container_app_environment_dapr_components_init_timeout" {
  description = "Map of init_timeout values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_init_timeout
}

output "container_app_environment_dapr_components_metadata" {
  description = "Map of metadata values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_metadata
}

output "container_app_environment_dapr_components_name" {
  description = "Map of name values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_name
}

output "container_app_environment_dapr_components_scopes" {
  description = "Map of scopes values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_scopes
}

output "container_app_environment_dapr_components_secret" {
  description = "Map of secret values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_secret
  sensitive   = true
}

output "container_app_environment_dapr_components_version" {
  description = "Map of version values across all container_app_environment_dapr_components, keyed the same as var.container_app_environment_dapr_components"
  value       = module.container_app_environment_dapr_components.container_app_environment_dapr_components_version
}

# --- azurerm_container_app_environment_managed_certificate ---
output "container_app_environment_managed_certificates_id" {
  description = "Map of id values across all container_app_environment_managed_certificates, keyed the same as var.container_app_environment_managed_certificates"
  value       = module.container_app_environment_managed_certificates.container_app_environment_managed_certificates_id
}

output "container_app_environment_managed_certificates_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_managed_certificates, keyed the same as var.container_app_environment_managed_certificates"
  value       = module.container_app_environment_managed_certificates.container_app_environment_managed_certificates_container_app_environment_id
}

output "container_app_environment_managed_certificates_domain_control_validation" {
  description = "Map of domain_control_validation values across all container_app_environment_managed_certificates, keyed the same as var.container_app_environment_managed_certificates"
  value       = module.container_app_environment_managed_certificates.container_app_environment_managed_certificates_domain_control_validation
}

output "container_app_environment_managed_certificates_name" {
  description = "Map of name values across all container_app_environment_managed_certificates, keyed the same as var.container_app_environment_managed_certificates"
  value       = module.container_app_environment_managed_certificates.container_app_environment_managed_certificates_name
}

output "container_app_environment_managed_certificates_subject_name" {
  description = "Map of subject_name values across all container_app_environment_managed_certificates, keyed the same as var.container_app_environment_managed_certificates"
  value       = module.container_app_environment_managed_certificates.container_app_environment_managed_certificates_subject_name
}

output "container_app_environment_managed_certificates_tags" {
  description = "Map of tags values across all container_app_environment_managed_certificates, keyed the same as var.container_app_environment_managed_certificates"
  value       = module.container_app_environment_managed_certificates.container_app_environment_managed_certificates_tags
}

output "container_app_environment_managed_certificates_validation_token" {
  description = "Map of validation_token values across all container_app_environment_managed_certificates, keyed the same as var.container_app_environment_managed_certificates"
  value       = module.container_app_environment_managed_certificates.container_app_environment_managed_certificates_validation_token
}

# --- azurerm_container_app_environment_storage ---
output "container_app_environment_storages_id" {
  description = "Map of id values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = module.container_app_environment_storages.container_app_environment_storages_id
}

output "container_app_environment_storages_access_key" {
  description = "Map of access_key values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = module.container_app_environment_storages.container_app_environment_storages_access_key
  sensitive   = true
}

output "container_app_environment_storages_access_mode" {
  description = "Map of access_mode values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = module.container_app_environment_storages.container_app_environment_storages_access_mode
}

output "container_app_environment_storages_account_name" {
  description = "Map of account_name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = module.container_app_environment_storages.container_app_environment_storages_account_name
}

output "container_app_environment_storages_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = module.container_app_environment_storages.container_app_environment_storages_container_app_environment_id
}

output "container_app_environment_storages_name" {
  description = "Map of name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = module.container_app_environment_storages.container_app_environment_storages_name
}

output "container_app_environment_storages_nfs_server_url" {
  description = "Map of nfs_server_url values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = module.container_app_environment_storages.container_app_environment_storages_nfs_server_url
}

output "container_app_environment_storages_share_name" {
  description = "Map of share_name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = module.container_app_environment_storages.container_app_environment_storages_share_name
}

# --- azurerm_container_app_job ---
output "container_app_jobs_id" {
  description = "Map of id values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_id
}

output "container_app_jobs_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_container_app_environment_id
}

output "container_app_jobs_event_stream_endpoint" {
  description = "Map of event_stream_endpoint values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_event_stream_endpoint
}

output "container_app_jobs_event_trigger_config" {
  description = "Map of event_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_event_trigger_config
}

output "container_app_jobs_identity" {
  description = "Map of identity values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_identity
}

output "container_app_jobs_location" {
  description = "Map of location values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_location
}

output "container_app_jobs_manual_trigger_config" {
  description = "Map of manual_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_manual_trigger_config
}

output "container_app_jobs_name" {
  description = "Map of name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_name
}

output "container_app_jobs_outbound_ip_addresses" {
  description = "Map of outbound_ip_addresses values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_outbound_ip_addresses
}

output "container_app_jobs_registry" {
  description = "Map of registry values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_registry
}

output "container_app_jobs_replica_retry_limit" {
  description = "Map of replica_retry_limit values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_replica_retry_limit
}

output "container_app_jobs_replica_timeout_in_seconds" {
  description = "Map of replica_timeout_in_seconds values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_replica_timeout_in_seconds
}

output "container_app_jobs_resource_group_name" {
  description = "Map of resource_group_name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_resource_group_name
}

output "container_app_jobs_schedule_trigger_config" {
  description = "Map of schedule_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_schedule_trigger_config
}

output "container_app_jobs_secret" {
  description = "Map of secret values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_secret
  sensitive   = true
}

output "container_app_jobs_tags" {
  description = "Map of tags values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_tags
}

output "container_app_jobs_template" {
  description = "Map of template values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_template
}

output "container_app_jobs_workload_profile_name" {
  description = "Map of workload_profile_name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = module.container_app_jobs.container_app_jobs_workload_profile_name
}

# --- azurerm_container_app_custom_domain ---
output "container_app_custom_domains_id" {
  description = "Map of id values across all container_app_custom_domains, keyed the same as var.container_app_custom_domains"
  value       = module.container_app_custom_domains.container_app_custom_domains_id
}

output "container_app_custom_domains_certificate_binding_type" {
  description = "Map of certificate_binding_type values across all container_app_custom_domains, keyed the same as var.container_app_custom_domains"
  value       = module.container_app_custom_domains.container_app_custom_domains_certificate_binding_type
}

output "container_app_custom_domains_container_app_environment_certificate_id" {
  description = "Map of container_app_environment_certificate_id values across all container_app_custom_domains, keyed the same as var.container_app_custom_domains"
  value       = module.container_app_custom_domains.container_app_custom_domains_container_app_environment_certificate_id
}

output "container_app_custom_domains_container_app_environment_managed_certificate_id" {
  description = "Map of container_app_environment_managed_certificate_id values across all container_app_custom_domains, keyed the same as var.container_app_custom_domains"
  value       = module.container_app_custom_domains.container_app_custom_domains_container_app_environment_managed_certificate_id
}

output "container_app_custom_domains_container_app_id" {
  description = "Map of container_app_id values across all container_app_custom_domains, keyed the same as var.container_app_custom_domains"
  value       = module.container_app_custom_domains.container_app_custom_domains_container_app_id
}

output "container_app_custom_domains_name" {
  description = "Map of name values across all container_app_custom_domains, keyed the same as var.container_app_custom_domains"
  value       = module.container_app_custom_domains.container_app_custom_domains_name
}


