resource "kubernetes_namespace" "openebs" {
  count = var.create_openebs_namespace ? 1 : 0
  metadata {
    name = var.openebs_namespace
  }
}

data "kubernetes_namespace" "openebs" {
  depends_on = [
    kubernetes_namespace.openebs,
  ]
  count = var.openebs_enabled ? 1 : 0
  metadata {
    name = var.openebs_namespace
  }
}

resource "kubernetes_namespace" "minio_operator" {
  count = var.create_minio_operator_namespace ? 1 : 0
  metadata {
    name = var.minio_operator_namespace
  }
}

data "kubernetes_namespace" "minio_operator" {
  depends_on = [
    kubernetes_namespace.minio_operator,
  ]
  count = var.minio_operator_enabled ? 1 : 0
  metadata {
    name = var.minio_operator_namespace
  }
}

resource "kubernetes_namespace" "velero" {
  count = var.create_velero_namespace ? 1 : 0
  metadata {
    name = var.velero_namespace
  }
}

data "kubernetes_namespace" "velero" {
  depends_on = [
    kubernetes_namespace.velero,
  ]
  count = var.velero_enabled ? 1 : 0
  metadata {
    name = var.velero_namespace
  }
}
