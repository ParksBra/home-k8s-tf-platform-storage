resource "helm_release" "longhorn" {
  name       = "longhorn"
  repository = "https://longhorn.io/helm-charts"
  chart      = "longhorn"
  version    = "1.2.3"  # Specify the desired version of the Longhorn Helm chart
  set = [
    {
      name  = "defaultSettings.defaultDataPath"
      value = "/mnt/longhorn"
    },
    {
      name  = "persistence.defaultClassReplicaCount"
      value = "1"
    },
    {
      name  = "defaultSettings.defaultLonghornStaticStorageClass"
      value = "longhorn"
    },
    {
      name  = "persistence.reclaimPolicy"
      value = "Retain"
    }
  ]
}
