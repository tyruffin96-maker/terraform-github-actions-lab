output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.github_actions_demo.id
}

output "public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.github_actions_demo.public_ip
}
