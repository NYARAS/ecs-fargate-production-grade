output "db_host" {
  value = aws_db_instance.main.address
}

output "bastion_host" {
  description = "Get bastion instance public DNS name"
  value       = aws_instance.bastion.public_dns
}

output "api_endpoint" {
  value = aws_lb.api.dns_name
}
