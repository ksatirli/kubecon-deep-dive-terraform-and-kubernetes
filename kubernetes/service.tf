resource "kubernetes_service" "beacon" {
  metadata {
    name      = var.application_name
    namespace = kubernetes_namespace.beacon.id
  }

  spec {
    selector = {
      app = kubernetes_deployment.beacon.metadata[0].labels.app
    }

    port {
      port        = var.application_port
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
