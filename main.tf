module "change" {
  source = "git::https://github.com/s3d-club/terraform-external-data-name-tags?ref=v0.1.0"

  path = path.module
  tags = var.tags
}

module "upstream" {
  source = "./upstream"

  domain_name               = var.domain
  subject_alternative_names = ["*.${var.domain}"]
  tags                      = module.change.tags
  zone_id                   = var.zone_id
}
