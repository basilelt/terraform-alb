variable "host_os" {
    type = string
    default = "linux"
}

variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

variable "tag_name" {
  default = "Formation-Finops-XXX"
  description = "Valeur du tag utilisé pour la création des instances terraforms"
}

