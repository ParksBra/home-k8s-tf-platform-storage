module "velero_minio_tenant" {
  count = var.velero_enabled && var.minio_operator_enabled ? 1 : 0
  depends_on = [
    module.minio_operator,
  ]
  source = "github.com/ParksBra/home-k8s-tf-lib//modules/minio_tenant?ref=1.0.0"

  namespace               = data.kubernetes_namespace.velero[0].metadata[0].name
  create_namespace        = false

  chart_install_name      = local.velero_minio_tenant_name

  buckets = local.velero_minio_tenant_buckets

  pool_name = local.velero_minio_tenant_pool
  pool_size_gb = var.velero_minio_pool_size_gb
  pool_server_count = var.velero_minio_pool_server_count
  pool_volume_count = var.velero_minio_pool_volume_count
  pool_storage_class_name = var.velero_minio_pool_storage_class_name
  pool_node_selector = var.velero_minio_pool_node_selector
  pool_tolerations = var.velero_minio_pool_tolerations
  pool_user_id = var.velero_minio_pool_user_id
  pool_group_id = var.velero_minio_pool_group_id
}
