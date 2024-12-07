output "webserver_instance_id" {
  value = aws_instance.webserver.id
}

output "webserver_public_ip" {
  value = aws_instance.webserver.public_ip
}

output "webserver_private_ip" {
  value = aws_instance.webserver.private_ip
}
output "private_key_content" {
  value     = tls_private_key.example_key.private_key_pem
  sensitive = true
}
