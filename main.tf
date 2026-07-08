locals {
  container_app_environments = { for k1, v1 in var.container_app_environments : k1 => { dapr_application_insights_connection_string = v1.dapr_application_insights_connection_string, identity = v1.identity, infrastructure_resource_group_name = v1.infrastructure_resource_group_name, infrastructure_subnet_id = v1.infrastructure_subnet_id, internal_load_balancer_enabled = v1.internal_load_balancer_enabled, location = v1.location, log_analytics_workspace_id = v1.log_analytics_workspace_id, logs_destination = v1.logs_destination, mutual_tls_enabled = v1.mutual_tls_enabled, name = v1.name, public_network_access = v1.public_network_access, resource_group_name = v1.resource_group_name, tags = v1.tags, workload_profile = v1.workload_profile, zone_redundancy_enabled = v1.zone_redundancy_enabled } }

  container_apps = merge([
    for k1, v1 in var.container_app_environments : {
      for k2, v2 in coalesce(v1.container_apps, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_app_environment_id = module.container_app_environments.container_app_environments["${k1}"].id
      })
    }
  ]...)

  container_app_environment_certificates = merge([
    for k1, v1 in var.container_app_environments : {
      for k2, v2 in coalesce(v1.container_app_environment_certificates, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_app_environment_id = module.container_app_environments.container_app_environments["${k1}"].id
      })
    }
  ]...)

  container_app_environment_custom_domains = merge([
    for k1, v1 in var.container_app_environments : {
      for k2, v2 in coalesce(v1.container_app_environment_custom_domains, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_app_environment_id = module.container_app_environments.container_app_environments["${k1}"].id
      })
    }
  ]...)

  container_app_environment_dapr_components = merge([
    for k1, v1 in var.container_app_environments : {
      for k2, v2 in coalesce(v1.container_app_environment_dapr_components, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_app_environment_id = module.container_app_environments.container_app_environments["${k1}"].id
      })
    }
  ]...)

  container_app_environment_managed_certificates = merge([
    for k1, v1 in var.container_app_environments : {
      for k2, v2 in coalesce(v1.container_app_environment_managed_certificates, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_app_environment_id = module.container_app_environments.container_app_environments["${k1}"].id
      })
    }
  ]...)

  container_app_environment_storages = merge([
    for k1, v1 in var.container_app_environments : {
      for k2, v2 in coalesce(v1.container_app_environment_storages, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_app_environment_id = module.container_app_environments.container_app_environments["${k1}"].id
      })
    }
  ]...)

  container_app_jobs = merge([
    for k1, v1 in var.container_app_environments : {
      for k2, v2 in coalesce(v1.container_app_jobs, {}) :
      "${k1}/${k2}" => merge(v2, {
        container_app_environment_id = module.container_app_environments.container_app_environments["${k1}"].id
      })
    }
  ]...)

  container_app_custom_domains = merge([
    for k1, v1 in var.container_app_environments : merge([
      for k2, v2 in coalesce(v1.container_apps, {}) : {
        for k3, v3 in coalesce(v2.container_app_custom_domains, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          container_app_id = module.container_apps.container_apps["${k1}/${k2}"].id
        })
      }
    ]...)
  ]...)
}

module "container_app_environments" {
  source                     = "git::https://github.com/AeternaModules/azurerm_container_app_environment.git?ref=v4.80.0"
  container_app_environments = local.container_app_environments
}

module "container_apps" {
  source         = "git::https://github.com/AeternaModules/azurerm_container_app.git?ref=v4.80.0"
  container_apps = local.container_apps
  depends_on     = [module.container_app_environments]
}

module "container_app_environment_certificates" {
  source                                 = "git::https://github.com/AeternaModules/azurerm_container_app_environment_certificate.git?ref=v4.80.0"
  container_app_environment_certificates = local.container_app_environment_certificates
  depends_on                             = [module.container_app_environments]
}

module "container_app_environment_custom_domains" {
  source                                   = "git::https://github.com/AeternaModules/azurerm_container_app_environment_custom_domain.git?ref=v4.80.0"
  container_app_environment_custom_domains = local.container_app_environment_custom_domains
  depends_on                               = [module.container_app_environments]
}

module "container_app_environment_dapr_components" {
  source                                    = "git::https://github.com/AeternaModules/azurerm_container_app_environment_dapr_component.git?ref=v4.80.0"
  container_app_environment_dapr_components = local.container_app_environment_dapr_components
  depends_on                                = [module.container_app_environments]
}

module "container_app_environment_managed_certificates" {
  source                                         = "git::https://github.com/AeternaModules/azurerm_container_app_environment_managed_certificate.git?ref=v4.80.0"
  container_app_environment_managed_certificates = local.container_app_environment_managed_certificates
  depends_on                                     = [module.container_app_environments]
}

module "container_app_environment_storages" {
  source                             = "git::https://github.com/AeternaModules/azurerm_container_app_environment_storage.git?ref=v4.80.0"
  container_app_environment_storages = local.container_app_environment_storages
  depends_on                         = [module.container_app_environments]
}

module "container_app_jobs" {
  source             = "git::https://github.com/AeternaModules/azurerm_container_app_job.git?ref=v4.80.0"
  container_app_jobs = local.container_app_jobs
  depends_on         = [module.container_app_environments]
}

module "container_app_custom_domains" {
  source                       = "git::https://github.com/AeternaModules/azurerm_container_app_custom_domain.git?ref=v4.80.0"
  container_app_custom_domains = local.container_app_custom_domains
  depends_on                   = [module.container_apps]
}

