output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "web1_id" {
  value = aws_instance.web1.id
}

output "web2_id" {
  value = aws_instance.web2.id
}
