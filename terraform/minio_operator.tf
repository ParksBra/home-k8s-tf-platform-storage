module "minio_operator" {
  source = "github.com/ParksBra/home-k8s-tf-lib//modules/minio_operator?ref=create_platform_tf"

  namespace = data.kubernetes_namespace.minio_operator.metadata[0].name
  create_namespace = false
}
