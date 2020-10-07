output "ecs_vpc" {
  value = aws_vpc.ecs_vpc
}


output "private_subnet_a" {
  value = aws_subnet.private_subnet_a
}

output "public_subnet_a" {
  value = aws_subnet.public_subnet_a
}
