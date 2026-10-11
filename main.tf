resource "oci_database_management_autonomous_database_autonomous_database_dbm_features_management" "database_management_autonomous_database_autonomous_database_dbm_features_managements" {
  for_each = var.database_management_autonomous_database_autonomous_database_dbm_features_managements

  autonomous_database_id                 = each.value.autonomous_database_id
  enable_autonomous_database_dbm_feature = each.value.enable_autonomous_database_dbm_feature

  dynamic "feature_details" {
    for_each = each.value.feature_details != null ? [each.value.feature_details] : []
    content {
      dynamic "connector_details" {
        for_each = feature_details.value.connector_details != null ? [feature_details.value.connector_details] : []
        content {
          connector_type        = connector_details.value.connector_type
          database_connector_id = connector_details.value.database_connector_id
          management_agent_id   = connector_details.value.management_agent_id
          private_end_point_id  = connector_details.value.private_end_point_id
        }
      }
      dynamic "database_connection_details" {
        for_each = feature_details.value.database_connection_details != null ? [feature_details.value.database_connection_details] : []
        content {
          dynamic "connection_credentials" {
            for_each = database_connection_details.value.connection_credentials != null ? [database_connection_details.value.connection_credentials] : []
            content {
              credential_name    = connection_credentials.value.credential_name
              credential_type    = connection_credentials.value.credential_type
              password_secret_id = connection_credentials.value.password_secret_id
              role               = connection_credentials.value.role
              ssl_secret_id      = connection_credentials.value.ssl_secret_id
              user_name          = connection_credentials.value.user_name
            }
          }
          dynamic "connection_string" {
            for_each = database_connection_details.value.connection_string != null ? [database_connection_details.value.connection_string] : []
            content {
              connection_type = connection_string.value.connection_type
              port            = connection_string.value.port
              protocol        = connection_string.value.protocol
              service         = connection_string.value.service
            }
          }
        }
      }
      feature = feature_details.value.feature
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

