module "minio_operator" {
  count = var.minio_operator_enabled ? 1 : 0
  source = "github.com/ParksBra/home-k8s-tf-lib//modules/minio_operator?ref=1.0.0"

  namespace = data.kubernetes_namespace.minio_operator[0].metadata[0].name
  create_namespace = false
}
