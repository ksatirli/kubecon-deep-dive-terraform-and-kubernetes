variable "namespace_name" {
  type        = string
  description = "Namespace Name"
  default     = "beacon"
}

variable "application_name" {
  type        = string
  description = "Application Name"
  default     = "beacon"
}

variable "application_port" {
  type        = number
  description = "Application Port"
  default     = 8080
}
