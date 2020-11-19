resource "kubernetes_secret" "terraformrc" {
  metadata {
    name      = "terraformrc"
    namespace = var.namespace_name
  }

  data = {
    "credentials" = file("${path.module}/credentials")
  }

  type = "kubernetes.io/terraformrc"
}

