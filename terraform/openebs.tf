module "openebs" {
  count = var.openebs_enabled ? 1 : 0
  source = "github.com/ParksBra/home-k8s-tf-lib//modules/openebs_zfs?ref=1.0.0"

  namespace = data.kubernetes_namespace.openebs[0].metadata[0].name
  create_namespace = false
}
