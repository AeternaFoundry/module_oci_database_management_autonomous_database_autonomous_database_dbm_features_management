output "database_management_autonomous_database_autonomous_database_dbm_features_managements_id" {
  description = "Map of id values across all database_management_autonomous_database_autonomous_database_dbm_features_managements, keyed the same as var.database_management_autonomous_database_autonomous_database_dbm_features_managements except keys with no id are omitted"
  value       = { for k, v in oci_database_management_autonomous_database_autonomous_database_dbm_features_management.database_management_autonomous_database_autonomous_database_dbm_features_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_management_autonomous_database_autonomous_database_dbm_features_managements_autonomous_database_id" {
  description = "Map of autonomous_database_id values across all database_management_autonomous_database_autonomous_database_dbm_features_managements, keyed the same as var.database_management_autonomous_database_autonomous_database_dbm_features_managements except keys with no autonomous_database_id are omitted"
  value       = { for k, v in oci_database_management_autonomous_database_autonomous_database_dbm_features_management.database_management_autonomous_database_autonomous_database_dbm_features_managements : k => v.autonomous_database_id if v.autonomous_database_id != null && length(v.autonomous_database_id) > 0 }
}
output "database_management_autonomous_database_autonomous_database_dbm_features_managements_enable_autonomous_database_dbm_feature" {
  description = "Map of enable_autonomous_database_dbm_feature values across all database_management_autonomous_database_autonomous_database_dbm_features_managements, keyed the same as var.database_management_autonomous_database_autonomous_database_dbm_features_managements except keys with no enable_autonomous_database_dbm_feature are omitted"
  value       = { for k, v in oci_database_management_autonomous_database_autonomous_database_dbm_features_management.database_management_autonomous_database_autonomous_database_dbm_features_managements : k => v.enable_autonomous_database_dbm_feature if v.enable_autonomous_database_dbm_feature != null }
}
output "database_management_autonomous_database_autonomous_database_dbm_features_managements_feature_details" {
  description = "Map of feature_details values across all database_management_autonomous_database_autonomous_database_dbm_features_managements, keyed the same as var.database_management_autonomous_database_autonomous_database_dbm_features_managements except keys with no feature_details are omitted"
  value       = { for k, v in oci_database_management_autonomous_database_autonomous_database_dbm_features_management.database_management_autonomous_database_autonomous_database_dbm_features_managements : k => one(v.feature_details) if v.feature_details != null && length(v.feature_details) > 0 }
  sensitive   = true
}

