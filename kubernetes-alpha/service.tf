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
          "protocol"   = "TCP"
          "port"       = 8082
          "targetPort" = 80
          "nodePort"   = 30007

        },
      ]

      # Needs to be set per #110, will be resolved with #41 soon
      "clusterIP" = "10.111.211.101"

      "selector" = {
        "app" = "beacon-hcl"
      }

      "type" = "NodePort"
    }
  }
}
