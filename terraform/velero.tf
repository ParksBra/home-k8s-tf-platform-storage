module "velero" {
  depends_on = [
    module.velero_minio_tenant,
  ]
  source = "github.com/ParksBra/home-k8s-tf-lib//modules/velero_s3_backup?ref=create_platform_tf"

  namespace = data.kubernetes_namespace.velero.metadata[0].name
  create_namespace = false

  bucket_access_id = module.velero_minio_tenant.tenant_access_id
  bucket_access_key = module.velero_minio_tenant.tenant_access_key
  bucket_name = local.velero_bucket_name
  bucket_region = local.velero_bucket_region
  bucket_endpoint = local.velero_bucket_endpoint

  internal_kubectl_repository = var.velero_internal_kubectl_repository
  internal_kubectl_tag = var.velero_internal_kubectl_tag
}
