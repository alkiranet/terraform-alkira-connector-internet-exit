output "connector_id" {
  description = "ID of connector"
  value       = alkira_connector_internet_exit.connector.id
}

output "implicit_group_id" {
  description = "ID of implicit group automatically created with connector"
  value       = alkira_connector_internet_exit.connector.implicit_group_id
}