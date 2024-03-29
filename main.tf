data "aws_route53_zone" "this" {
  name = local.domain_split_len == 2 ? var.domain : join(".", slice(local.domain_split, 1, local.domain_split_len))
}

locals {
  domain_split     = split(".", var.domain)
  domain_split_len = length(local.domain_split)
}

module "name" {
  source = "github.com/s3d-club/terraform-external-data-name-tags?ref=v1.1.0"

  path = path.module
  tags = var.tags
}

module "upstream" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-acm?ref=v4.2.0"

  domain_name               = var.domain
  subject_alternative_names = var.subject_alternative_names
  tags                      = module.name.tags
  zone_id                   = data.aws_route53_zone.this.zone_id
}
