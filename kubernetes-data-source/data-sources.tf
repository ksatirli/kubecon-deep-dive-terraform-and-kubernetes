# collect information from the Beacon Service
data "kubernetes_service" "beacon" {
  metadata {
    name      = var.application_name
    namespace = var.namespace_name
  }
}
