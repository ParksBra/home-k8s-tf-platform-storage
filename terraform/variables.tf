variable "openebs_namespace" {
  description = "The Kubernetes namespace in which to deploy OpenEBS."
  type        = string
  default     = "openebs"
}

variable "create_openebs_namespace" {
  description = "Whether to create the OpenEBS namespace."
  type        = bool
  default     = true
}

variable "minio_operator_namespace" {
  description = "The Kubernetes namespace in which to deploy the MinIO Operator."
  type        = string
  default     = "minio-operator"
}

variable "create_minio_operator_namespace" {
  description = "Whether to create the MinIO Operator namespace."
  type        = bool
  default     = true
}

variable "velero_namespace" {
  description = "The Kubernetes namespace in which to deploy the Velero MinIO tenant."
  type        = string
  default     = "velero"
}

variable "create_velero_namespace" {
  description = "Whether to create the Velero namespace."
  type        = bool
  default     = true
}

variable "velero_minio_pool_size_gb" {
  description = "The size in GB of each volume in the Velero MinIO tenant pool."
  type        = number
  default     = 32
}

variable "velero_minio_pool_server_count" {
  description = "The number of servers in the Velero MinIO tenant pool."
  type        = number
  default     = 1
}

variable "velero_minio_pool_volume_count" {
  description = "The number of volumes per server in the Velero MinIO tenant pool."
  type        = number
  default     = 1
}

variable "velero_minio_pool_storage_class_name" {
  description = "The storage class name to use for the Velero MinIO tenant pool volumes."
  type        = string
  default     = "standard"
}

variable "velero_minio_pool_node_selector" {
  description = "The node selector to use for the Velero MinIO tenant pool pods."
  type        = map(string)
  default     = {
    "minio.io/storage-node" = "true"
  }
}

variable "velero_minio_pool_tolerations" {
  description = "The tolerations to use for the Velero MinIO tenant pool pods."
  type        = list(object({
    key      = string
    operator = string
    value    = string
    effect   = string
  }))
  default     = []
}

