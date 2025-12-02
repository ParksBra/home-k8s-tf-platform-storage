locals {
  velero_minio_tenant_name = "velero-minio-tenant"
  velero_minio_tenant_pool = "velero-minio-pool"

  velero_namespace = "velero"

  velero_bucket_name = module.velero_minio_tenant.tenant_bucket_names[0]
  velero_bucket_region = module.velero_minio_tenant.tenant_bucket_regions_by_name[local.velero_bucket_name]
  velero_bucket_endpoint = "${module.velero_minio_tenant.tenant_service_protocol}://${module.velero_minio_tenant.tenant_service_address}.cluster.local"
}
