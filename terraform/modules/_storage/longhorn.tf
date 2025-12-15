resource "helm_release" "longhorn" {
  name       = "longhorn"
  repository = "https://charts.longhorn.io"
  chart      = "longhorn"
  namespace  = "longhorn-system"
  create_namespace = true
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
