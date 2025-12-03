resource "kubernetes_storage_class" "service" {
  metadata {
    name          = local.service_storageclass_name
    annotations   = local.service_storageclass_annotations
    labels        = local.service_storageclass_labels
  }

  storage_provisioner = local.service_storageclass_provisioner
  reclaim_policy      = local.service_storageclass_reclaim_policy
  volume_binding_mode = local.service_storageclass_volume_binding_mode
  parameters          = local.service_storageclass_parameters
}

resource "kubernetes_storage_class" "velero" {
  metadata {
    name          = local.velero_storageclass_name
    annotations   = local.velero_storageclass_annotations
    labels        = local.velero_storageclass_labels
  }

  storage_provisioner = local.velero_storageclass_provisioner
  reclaim_policy      = local.velero_storageclass_reclaim_policy
  volume_binding_mode = local.velero_storageclass_volume_binding_mode
  parameters          = local.velero_storageclass_parameters
}
