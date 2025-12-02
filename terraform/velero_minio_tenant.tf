module "velero_minio_tenant" {
  depends_on = [
    module.minio_operator,
  ]
  source = "github.com/ParksBra/home-k8s-tf-lib//modules/minio_tenant?ref=create_platform_tf"

  namespace               = data.kubernetes_namespace.velero.metadata[0].name
  create_namespace        = false

  chart_install_name      = local.velero_minio_tenant_name

  pool_name = local.velero_minio_tenant_pool
  pool_size_gb = var.velero_minio_pool_size_gb
  pool_server_count = var.velero_minio_pool_server_count
  pool_volume_count = var.velero_minio_pool_volume_count
  pool_storage_class_name = var.velero_minio_pool_storage_class_name
  pool_node_selector = var.velero_minio_pool_node_selector
  pool_tolerations = var.velero_minio_pool_tolerations
}
