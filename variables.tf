variable "domain" {
  type = string

  description = <<-END
		Domain name

		The ACM will be constructed for this domain name.
		END
}

variable "subject_alternative_names" {
  default = []
  type    = list(string)

  description = <<-END
		Domain name

		The ACM will be constructed for this domain name.
		END
}

variable "tags" {
  default = {}
  type    = map(string)

  description = <<-END
    The tags for resources

		This module will include these tags on all resources.
    END
}

variable "zone_id" {
  type = string

  description = <<-END
    **DEPRECATED** zone_id

		This will be removed in the next version!
    END
}
