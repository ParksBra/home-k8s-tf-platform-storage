module "openebs" {
  source = "github.com/ParksBra/home-k8s-tf-lib//modules/openebs_zfs?ref=create_platform_tf"

  namespace = data.kubernetes_namespace.openebs.metadata[0].name
  create_namespace = false
}
