output "arn" {
  value = module.upstream.acm_certificate_arn

  description = <<-END
		ACM ARN

		This is the ARN for the certificate.
		END
}
