variable "container_app_environments" {
  description = <<EOT
Map of container_app_environments, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - dapr_application_insights_connection_string
    - infrastructure_resource_group_name
    - infrastructure_subnet_id
    - internal_load_balancer_enabled
    - log_analytics_workspace_id
    - logs_destination
    - mutual_tls_enabled
    - public_network_access
    - tags
    - zone_redundancy_enabled
    - identity (block)
    - workload_profile (block)
Nested container_apps (azurerm_container_app):
    Required:
        - name
        - resource_group_name
        - revision_mode
        - template (block)
    Optional:
        - max_inactive_revisions
        - tags
        - workload_profile_name
        - dapr (block)
        - identity (block)
        - ingress (block)
        - registry (block)
        - secret (block)
    Nested container_app_custom_domains (azurerm_container_app_custom_domain):
        Required:
            - name
        Optional:
            - certificate_binding_type
            - container_app_environment_certificate_id
Nested container_app_environment_certificates (azurerm_container_app_environment_certificate):
    Required:
        - name
    Optional:
        - certificate_blob_base64
        - certificate_password
        - tags
        - certificate_key_vault (block)
Nested container_app_environment_custom_domains (azurerm_container_app_environment_custom_domain):
    Required:
        - certificate_blob_base64
        - certificate_password
        - dns_suffix
Nested container_app_environment_dapr_components (azurerm_container_app_environment_dapr_component):
    Required:
        - component_type
        - name
        - version
    Optional:
        - ignore_errors
        - init_timeout
        - scopes
        - metadata (block)
        - secret (block)
Nested container_app_environment_managed_certificates (azurerm_container_app_environment_managed_certificate):
    Required:
        - name
        - subject_name
    Optional:
        - domain_control_validation
        - tags
Nested container_app_environment_storages (azurerm_container_app_environment_storage):
    Required:
        - access_mode
        - name
        - share_name
    Optional:
        - access_key
        - account_name
        - nfs_server_url
Nested container_app_jobs (azurerm_container_app_job):
    Required:
        - location
        - name
        - replica_timeout_in_seconds
        - resource_group_name
        - template (block)
    Optional:
        - replica_retry_limit
        - tags
        - workload_profile_name
        - event_trigger_config (block)
        - identity (block)
        - manual_trigger_config (block)
        - registry (block)
        - schedule_trigger_config (block)
        - secret (block)
EOT

  type = map(object({
    location                                    = string
    name                                        = string
    resource_group_name                         = string
    dapr_application_insights_connection_string = optional(string)
    infrastructure_resource_group_name          = optional(string)
    infrastructure_subnet_id                    = optional(string)
    internal_load_balancer_enabled              = optional(bool) # Default: false
    log_analytics_workspace_id                  = optional(string)
    logs_destination                            = optional(string)
    mutual_tls_enabled                          = optional(bool) # Default: false
    public_network_access                       = optional(string)
    tags                                        = optional(map(string))
    zone_redundancy_enabled                     = optional(bool) # Default: false
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    workload_profile = optional(list(object({
      maximum_count         = optional(number)
      minimum_count         = optional(number)
      name                  = string
      workload_profile_type = string
    })))
    container_apps = optional(map(object({
      name                   = string
      resource_group_name    = string
      revision_mode          = string
      max_inactive_revisions = optional(number)
      tags                   = optional(map(string))
      workload_profile_name  = optional(string)
      template = object({
        azure_queue_scale_rule = optional(list(object({
          authentication = list(object({
            secret_name       = string
            trigger_parameter = string
          }))
          name         = string
          queue_length = number
          queue_name   = string
        })))
        container = list(object({
          args    = optional(list(string))
          command = optional(list(string))
          cpu     = number
          env = optional(list(object({
            name        = string
            secret_name = optional(string)
            value       = optional(string)
          })))
          image = string
          liveness_probe = optional(list(object({
            failure_count_threshold = optional(number) # Default: 3
            header = optional(list(object({
              name  = string
              value = string
            })))
            host             = optional(string)
            initial_delay    = optional(number) # Default: 1
            interval_seconds = optional(number) # Default: 10
            path             = optional(string)
            port             = number
            timeout          = optional(number) # Default: 1
            transport        = string
          })))
          memory = string
          name   = string
          readiness_probe = optional(list(object({
            failure_count_threshold = optional(number) # Default: 3
            header = optional(list(object({
              name  = string
              value = string
            })))
            host                    = optional(string)
            initial_delay           = optional(number) # Default: 0
            interval_seconds        = optional(number) # Default: 10
            path                    = optional(string)
            port                    = number
            success_count_threshold = optional(number) # Default: 3
            timeout                 = optional(number) # Default: 1
            transport               = string
          })))
          startup_probe = optional(list(object({
            failure_count_threshold = optional(number) # Default: 3
            header = optional(list(object({
              name  = string
              value = string
            })))
            host             = optional(string)
            initial_delay    = optional(number) # Default: 0
            interval_seconds = optional(number) # Default: 10
            path             = optional(string)
            port             = number
            timeout          = optional(number) # Default: 1
            transport        = string
          })))
          volume_mounts = optional(list(object({
            name     = string
            path     = string
            sub_path = optional(string)
          })))
        }))
        cooldown_period_in_seconds = optional(number) # Default: 300
        custom_scale_rule = optional(list(object({
          authentication = optional(list(object({
            secret_name       = string
            trigger_parameter = string
          })))
          custom_rule_type = string
          identity_id      = optional(string)
          metadata         = map(string)
          name             = string
        })))
        http_scale_rule = optional(list(object({
          authentication = optional(list(object({
            secret_name       = string
            trigger_parameter = optional(string)
          })))
          concurrent_requests = string
          name                = string
        })))
        init_container = optional(list(object({
          args    = optional(list(string))
          command = optional(list(string))
          cpu     = optional(number)
          env = optional(list(object({
            name        = string
            secret_name = optional(string)
            value       = optional(string)
          })))
          image  = string
          memory = optional(string)
          name   = string
          volume_mounts = optional(list(object({
            name     = string
            path     = string
            sub_path = optional(string)
          })))
        })))
        max_replicas                = optional(number) # Default: 10
        min_replicas                = optional(number) # Default: 0
        polling_interval_in_seconds = optional(number) # Default: 30
        revision_suffix             = optional(string)
        tcp_scale_rule = optional(list(object({
          authentication = optional(list(object({
            secret_name       = string
            trigger_parameter = optional(string)
          })))
          concurrent_requests = string
          name                = string
        })))
        termination_grace_period_seconds = optional(number) # Default: 0
        volume = optional(list(object({
          mount_options = optional(string)
          name          = string
          storage_name  = optional(string)
          storage_type  = optional(string) # Default: "EmptyDir"
        })))
      })
      dapr = optional(object({
        app_id       = string
        app_port     = optional(number)
        app_protocol = optional(string) # Default: "http"
      }))
      identity = optional(object({
        identity_ids = optional(set(string))
        type         = string
      }))
      ingress = optional(object({
        allow_insecure_connections = optional(bool) # Default: false
        client_certificate_mode    = optional(string)
        cors = optional(object({
          allow_credentials_enabled = optional(bool) # Default: false
          allowed_headers           = optional(list(string))
          allowed_methods           = optional(list(string))
          allowed_origins           = list(string)
          exposed_headers           = optional(list(string))
          max_age_in_seconds        = optional(number)
        }))
        exposed_port     = optional(number)
        external_enabled = optional(bool) # Default: false
        ip_security_restriction = optional(list(object({
          action           = string
          description      = optional(string)
          ip_address_range = string
          name             = string
        })))
        target_port = number
        traffic_weight = list(object({
          label           = optional(string)
          latest_revision = optional(bool) # Default: false
          percentage      = number
          revision_suffix = optional(string)
        }))
        transport = optional(string) # Default: "auto"
      }))
      registry = optional(list(object({
        identity             = optional(string)
        password_secret_name = optional(string)
        server               = string
        username             = optional(string)
      })))
      secret = optional(list(object({
        identity            = optional(string)
        key_vault_secret_id = optional(string)
        name                = string
        value               = optional(string)
      })))
      container_app_custom_domains = optional(map(object({
        name                                     = string
        certificate_binding_type                 = optional(string)
        container_app_environment_certificate_id = optional(string)
      })))
    })))
    container_app_environment_certificates = optional(map(object({
      name                    = string
      certificate_blob_base64 = optional(string)
      certificate_password    = optional(string)
      tags                    = optional(map(string))
      certificate_key_vault = optional(object({
        identity            = optional(string) # Default: "System"
        key_vault_secret_id = string
      }))
    })))
    container_app_environment_custom_domains = optional(map(object({
      certificate_blob_base64 = string
      certificate_password    = string
      dns_suffix              = string
    })))
    container_app_environment_dapr_components = optional(map(object({
      component_type = string
      name           = string
      version        = string
      ignore_errors  = optional(bool)   # Default: false
      init_timeout   = optional(string) # Default: "5s"
      scopes         = optional(list(string))
      metadata = optional(list(object({
        name        = string
        secret_name = optional(string)
        value       = optional(string)
      })))
      secret = optional(list(object({
        identity            = optional(string)
        key_vault_secret_id = optional(string)
        name                = string
        value               = optional(string)
      })))
    })))
    container_app_environment_managed_certificates = optional(map(object({
      name                      = string
      subject_name              = string
      domain_control_validation = optional(string) # Default: "HTTP"
      tags                      = optional(map(string))
    })))
    container_app_environment_storages = optional(map(object({
      access_mode    = string
      name           = string
      share_name     = string
      access_key     = optional(string)
      account_name   = optional(string)
      nfs_server_url = optional(string)
    })))
    container_app_jobs = optional(map(object({
      location                   = string
      name                       = string
      replica_timeout_in_seconds = number
      resource_group_name        = string
      replica_retry_limit        = optional(number)
      tags                       = optional(map(string))
      workload_profile_name      = optional(string)
      template = object({
        container = list(object({
          args    = optional(list(string))
          command = optional(list(string))
          cpu     = number
          env = optional(list(object({
            name        = string
            secret_name = optional(string)
            value       = optional(string)
          })))
          image = string
          liveness_probe = optional(list(object({
            failure_count_threshold = optional(number) # Default: 3
            header = optional(list(object({
              name  = string
              value = string
            })))
            host             = optional(string)
            initial_delay    = optional(number) # Default: 1
            interval_seconds = optional(number) # Default: 10
            path             = optional(string)
            port             = number
            timeout          = optional(number) # Default: 1
            transport        = string
          })))
          memory = string
          name   = string
          readiness_probe = optional(list(object({
            failure_count_threshold = optional(number) # Default: 3
            header = optional(list(object({
              name  = string
              value = string
            })))
            host                    = optional(string)
            initial_delay           = optional(number) # Default: 0
            interval_seconds        = optional(number) # Default: 10
            path                    = optional(string)
            port                    = number
            success_count_threshold = optional(number) # Default: 3
            timeout                 = optional(number) # Default: 1
            transport               = string
          })))
          startup_probe = optional(list(object({
            failure_count_threshold = optional(number) # Default: 3
            header = optional(list(object({
              name  = string
              value = string
            })))
            host             = optional(string)
            initial_delay    = optional(number) # Default: 0
            interval_seconds = optional(number) # Default: 10
            path             = optional(string)
            port             = number
            timeout          = optional(number) # Default: 1
            transport        = string
          })))
          volume_mounts = optional(list(object({
            name     = string
            path     = string
            sub_path = optional(string)
          })))
        }))
        init_container = optional(list(object({
          args    = optional(list(string))
          command = optional(list(string))
          cpu     = optional(number)
          env = optional(list(object({
            name        = string
            secret_name = optional(string)
            value       = optional(string)
          })))
          image  = string
          memory = optional(string)
          name   = string
          volume_mounts = optional(list(object({
            name     = string
            path     = string
            sub_path = optional(string)
          })))
        })))
        volume = optional(list(object({
          mount_options = optional(string)
          name          = string
          storage_name  = optional(string)
          storage_type  = optional(string) # Default: "EmptyDir"
        })))
      })
      event_trigger_config = optional(object({
        parallelism              = optional(number) # Default: 1
        replica_completion_count = optional(number) # Default: 1
        scale = optional(list(object({
          max_executions              = optional(number) # Default: 100
          min_executions              = optional(number) # Default: 0
          polling_interval_in_seconds = optional(number) # Default: 30
          rules = optional(list(object({
            authentication = optional(list(object({
              secret_name       = string
              trigger_parameter = string
            })))
            custom_rule_type = string
            identity_id      = optional(string)
            metadata         = map(string)
            name             = string
          })))
        })))
      }))
      identity = optional(object({
        identity_ids = optional(set(string))
        type         = string
      }))
      manual_trigger_config = optional(object({
        parallelism              = optional(number) # Default: 1
        replica_completion_count = optional(number) # Default: 1
      }))
      registry = optional(list(object({
        identity             = optional(string)
        password_secret_name = optional(string)
        server               = string
        username             = optional(string)
      })))
      schedule_trigger_config = optional(object({
        cron_expression          = string
        parallelism              = optional(number) # Default: 1
        replica_completion_count = optional(number) # Default: 1
      }))
      secret = optional(list(object({
        identity            = optional(string)
        key_vault_secret_id = optional(string)
        name                = string
        value               = optional(string)
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.container_app_environments) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.container_app_environments : [for kk in keys(coalesce(v0.container_apps, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_app_environments : [for k1, v1 in coalesce(v0.container_apps, {}) : [for kk in keys(coalesce(v1.container_app_custom_domains, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.container_app_environments : [for kk in keys(coalesce(v0.container_app_environment_certificates, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_app_environments : [for kk in keys(coalesce(v0.container_app_environment_custom_domains, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_app_environments : [for kk in keys(coalesce(v0.container_app_environment_dapr_components, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_app_environments : [for kk in keys(coalesce(v0.container_app_environment_managed_certificates, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_app_environments : [for kk in keys(coalesce(v0.container_app_environment_storages, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.container_app_environments : [for kk in keys(coalesce(v0.container_app_jobs, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
