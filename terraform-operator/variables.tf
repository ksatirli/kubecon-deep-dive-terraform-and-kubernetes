variable "namespace_name" {
  type        = string
  description = "Namespace Name"
  default     = "operator"
}

variable "helm_release_version" {
  type        = string
  description = "Helm Chart version"
  default     = "0.1.6-alpha"
}

variable "terraform_version" {
  type        = string
  description = "Terraform version"
  default     = "0.12.25"
}

resource "random_pet" "operator" {
  length    = 2
  separator = "-"
}

locals {
  helm_release_name = "${var.namespace_name}-${random_pet.operator.id}"
}
