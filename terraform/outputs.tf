output "primary_storage_class_name" {
  description = "The name of the primary storage class"
  value       = kubernetes_storage_class.service.metadata[0].name
}

output "primary_storage_class_reclaim_policy" {
  description = "The reclaim policy of the primary storage class"
  value       = local.service_storageclass_reclaim_policy
}

output "zfs_pool_name" {
  description = "The name of the ZFS pool created by OpenEBS"
  value       = local.zfs_pool_name
}
