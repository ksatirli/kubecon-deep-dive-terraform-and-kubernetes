resource "kubernetes_manifest" "service" {
  provider = kubernetes-alpha

  manifest = {
    "apiVersion" = "v1"
    "kind"       = "Service"

    "metadata" = {
      "name"      = "beacon-hcl"
      "namespace" = "beacon-hcl"
    }

    "spec" = {
      "ports" = [
        {
          protocol   = "TCP"
          port       = 8082
          targetPort = 80
        },
      ]

      "selector" = {
        "app" = "beacon-hcl"
      }

      "type" = "LoadBalancer"
    }
  }
}
