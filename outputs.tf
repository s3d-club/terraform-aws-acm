output "arn" {
  value = module.upstream.acm_certificate_arn

  description = <<-END
    The `arn` for the ACM certificate.
    END
}
