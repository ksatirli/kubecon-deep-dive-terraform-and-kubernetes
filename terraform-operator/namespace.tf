resource "kubernetes_namespace" "operator" {
  metadata {
    name = var.namespace_name
  }
}
