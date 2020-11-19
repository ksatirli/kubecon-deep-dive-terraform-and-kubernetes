terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "1.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "1.13.3"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
}

# see https://registry.terraform.io/providers/hashicorp/helm/latest/docs for more information
provider "helm" {}

# see https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/guides/getting-started#provider-setup for more information
provider "kubernetes" {
  # load Kubernetes Cluster configuration from `~/.kubectl/config` as opposed to manually
  # configuring `host`, `client_certificate`, `client_key`, and `cluster_ca_certificate`.
  load_config_file = true
}

# see https://registry.terraform.io/providers/hashicorp/random/latest/docs for more information
provider "random" {}
