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

      # NOTE: Needs to be set per issue#110 but will be resolved with issue#41
      # NOTE: update this to reflect your (local) Cluster IP address
      "clusterIP" = "10.110.199.162"

      "selector" = {
        "app" = "beacon-hcl"
      }

      "type" = "NodePort"
    }
  }
}
