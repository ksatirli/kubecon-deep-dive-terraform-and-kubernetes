terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "1.13.3"
    }
  }
}

# see https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/guides/getting-started#provider-setup for more information
provider "kubernetes" {
  # load Kubernetes Cluster configuration from `~/.kubectl/config` as opposed to manually
  # configuring `host`, `client_certificate`, `client_key`, and `cluster_ca_certificate`.
  load_config_file = true
}
