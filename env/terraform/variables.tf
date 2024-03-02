variable "resource_group_location" {
  type    = string
  default = "West Europe"
}

variable "resource_group_name_prefix" {
  type    = string
  default = "rg"
}

variable "container_group_name_prefix" {
  type    = string
  default = "acigroup"
}

variable "container_name_prefix" {
  type    = string
  default = "aci"
}

variable "image" {
  type    = string
  default = "jenkins/jenkins:lts"
}

variable "port" {
  type    = number
  default = 8080
}

variable "cpu_cores" {
  type    = number
  default = 1
}

variable "memory_in_gb" {
  type    = number
  default = 2
}

variable "restart_policy" {
  type    = string
  default = "Always"
  validation {
    condition     = contains(["Always", "Never", "OnFailure"], var.restart_policy)
    error_message = "The restart_policy must be one of the following: Always, Never, OnFailure."
  }
}