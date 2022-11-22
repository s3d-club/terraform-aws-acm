variable "domain" {
  type = string

  description = <<-EOT
    The domain name for the certificate.
    EOT
}

variable "subject_alternative_names" {
  default = []
  type    = list(string)

  description = <<-EOT
    The subject alternative name name for thse certificate.
    EOT
}

variable "tags" {
  default = {}
  type    = map(string)

  description = <<-EOT
    The tags for resources.
    EOT
}
