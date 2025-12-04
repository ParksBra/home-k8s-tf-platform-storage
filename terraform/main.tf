module "storage" {
  depends_on = [
    kubernetes_storage_class.velero,
    kubernetes_persistent_volume.velero
  ]
  source = "./modules/_storage"

  openebs_namespace = local.openebs_namespace
  create_openebs_namespace = true

  minio_operator_namespace = local.minio_operator_namespace
  create_minio_operator_namespace = true

  velero_namespace = local.velero_namespace
  create_velero_namespace = true

  velero_minio_pool_storage_class_name = kubernetes_storage_class.velero.metadata[0].name
  velero_minio_pool_size_gb = local.velero_minio_pool_size_gb
  velero_minio_pool_server_count = local.velero_minio_pool_server_count
  velero_minio_pool_volume_count = local.velero_minio_pool_volume_count
  velero_minio_pool_node_selector = local.velero_minio_pool_node_selector
  velero_minio_pool_tolerations = local.velero_minio_pool_tolerations

  velero_minio_pool_user_id = local.velero_minio_pool_user_id
  velero_minio_pool_group_id = local.velero_minio_pool_group_id

  velero_internal_kubectl_repository = local.velero_internal_kubectl_repository
  velero_internal_kubectl_tag = local.velero_internal_kubectl_tag

  velero_scheduled_backups = local.velero_scheduled_backups
  velero_scheduled_backup_common_labels = local.velero_scheduled_backup_common_labels
  velero_scheduled_backup_common_annotations = local.velero_scheduled_backup_common_annotations
}
