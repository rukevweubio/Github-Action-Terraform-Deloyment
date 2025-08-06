output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.main.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}
output "instance_ids" {
  value = aws_instance.web[*].id
}



output "private_key_pem" {
  value     = tls_private_key.example.private_key_pem
  sensitive = true
}

output "ec2_public_ip" {
  value = aws_instance.web[0].public_ip
}
