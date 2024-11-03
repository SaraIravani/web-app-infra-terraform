output "web_server_security_group_id" {
  description = "The ID of the web server security group"
  value       = aws_security_group.web_server_sg.id
}

