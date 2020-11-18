terraform {
  required_providers {
    kubernetes-alpha = {
      source  = "hashicorp/kubernetes-alpha"
      version = "0.2.1"
    }
  }
}

# see https://registry.terraform.io/providers/hashicorp/kubernetes-alpha/latest/docs#getting-started for more information
provider "kubernetes-alpha" {
  # load Kubernetes Cluster configuration from `~/.kubectl/config` as opposed to manually
  # configuring `host`, `client_certificate`, `client_key`, and `cluster_ca_certificate`.
  config_path          = "~/.kube/config"
  server_side_planning = true
}
