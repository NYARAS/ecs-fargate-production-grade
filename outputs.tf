output "db_host" {
  description = "Get RDS address"
  value       = aws_db_instance.main.address
}

output "bastion_host" {
  description = "Get bastion instance public DNS name"
  value       = aws_instance.bastion.public_dns
}

output "api_endpoint" {
  description = "Get Route53 DNS name"
  value       = aws_route53_record.app.fqdn
}
