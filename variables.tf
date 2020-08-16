variable "auto_upgrade" {
  default     = false
  description = "(Optional) A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window."
  type        = bool
}

variable "k8s_version" {
  description = "(Required) The slug identifier for the version of Kubernetes used for the cluster."
  type        = string
}

variable "name" {
  description = "(Required) The name for the Kubernetes cluster."
  type        = string
}

variable "node_pools" {
  description = "(Required) A map defining node pools for the cluster."
  type        = map
}

variable "region" {
  description = "(Required) The slug identifier for the region where the Kubernetes cluster will be created."
  type        = string
}

variable "surge_upgrade" {
  default     = false
  description = "(Optional) Enable/disable surge upgrades for a cluster."
  type        = bool
}

variable "tags" {
  default     = []
  description = "(Optional) A list of tag names to be applied to the Kubernetes cluster."
  type        = list
}

variable "vpc_uuid" {
  default     = null
  description = "(Optional) The ID of the VPC where the Kubernetes cluster will be located."
  type        = string
}
