# assign application data to local variables for easier re-use
locals {
  application_host = data.kubernetes_service.beacon.load_balancer_ingress[0].hostname
  application_port = data.kubernetes_service.beacon.spec[0].port[0].port
}

# uncomment this to display the full Service data object
#output "application_service_data" {
#  value = data.kubernetes_service.beacon
#}

output "application_host" {
  value = local.application_host
}

output "application_port" {
  value = local.application_port
}

output "application_url" {
  value = "http://${local.application_host}:${local.application_port}"
}
