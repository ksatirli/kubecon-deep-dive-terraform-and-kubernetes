resource "kubernetes_namespace" "beacon" {
  metadata {
    name = var.namespace_name
  }
}
