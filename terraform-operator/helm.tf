resource "helm_release" "operator" {
  name            = local.helm_release_name
  chart           = "terraform"
  repository      = "https://helm.releases.hashicorp.com"
  version         = var.helm_release_version
  namespace       = var.namespace_name
  reuse_values    = true
  cleanup_on_fail = true

  set {
    name  = "global.enabled"
    value = "true"
  }

  set {
    name  = "syncWorkspace.terraformVersion"
    value = var.terraform_version
  }
}
