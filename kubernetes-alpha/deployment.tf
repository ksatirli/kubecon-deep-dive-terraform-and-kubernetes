resource "kubernetes_manifest" "deployment" {
  provider = kubernetes-alpha

  manifest = {
    "apiVersion" = "apps/v1"
    "kind"       = "Deployment"
    "metadata" = {
      "labels" = {
        "app" = "beacon-hcl"
      }
      "name"      = "beacon-hcl"
      "namespace" = "beacon-hcl"
    }
    "spec" = {
      "replicas" = 3
      "selector" = {
        "matchLabels" = {
          "app" = "beacon-hcl"
        }
      }
      "template" = {
        "metadata" = {
          "labels" = {
            "app" = "beacon-hcl"
          }
        }
        "spec" = {
          "containers" = [
            {
              "image" = "onlydole/beacon:1.19.1"
              "name"  = "beacon-hcl"
            },
          ]
        }
      }
    }
  }

}
