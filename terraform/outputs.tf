output "minio_operator_namespace" {
  description = "The namespace where the MinIO Operator is deployed."
  value       = data.kubernetes_namespace.minio_operator.metadata[0].name
}

output "openebs_namespace" {
  description = "The namespace where OpenEBS is deployed."
  value       = data.kubernetes_namespace.openebs.metadata[0].name
}

output "velero_namespace" {
  description = "The namespace where Velero is deployed."
  value       = data.kubernetes_namespace.velero.metadata[0].name
}

output "velero_node_selector_labels" {
  description = "The node selector labels used by the Velero pods."
  value       = var.velero_minio_pool_node_selector
}

output "velero_tolerations" {
  description = "The tolerations applied to the Velero pods."
  value       = var.velero_minio_pool_tolerations
}

output "velero_minio_tenant_name" {
  description = "The name of the Velero MinIO tenant."
  value       = module.velero_minio_tenant.tenant_name
}

output "velero_minio_tenant_bucket_access_id" {
  description = "The access ID for the Velero MinIO tenant bucket."
  value       = module.velero_minio_tenant.tenant_access_id
}

output "velero_minio_tenant_bucket_access_key" {
  description = "The access key for the Velero MinIO tenant bucket."
  value       = module.velero_minio_tenant.tenant_access_key
  sensitive   = true
}

output "velero_minio_tenant_service_address" {
  description = "The address of the Velero MinIO tenant service."
  value       = module.velero_minio_tenant.tenant_service_address
}

output "velero_minio_tenant_service_protocol" {
  description = "The protocol used by the Velero MinIO tenant service."
  value       = module.velero_minio_tenant.tenant_service_protocol
}

output "velero_minio_tenant_bucket_name" {
  description = "The bucket name used by Velero in the MinIO tenant."
  value       = local.velero_bucket_name
}

output "velero_minio_tenant_bucket_region" {
  description = "The bucket region used by Velero in the MinIO tenant."
  value       = local.velero_bucket_region
}

output "velero_minio_tenant_bucket_endpoint" {
  description = "The bucket endpoint used by Velero in the MinIO tenant."
  value       = local.velero_bucket_endpoint
}
