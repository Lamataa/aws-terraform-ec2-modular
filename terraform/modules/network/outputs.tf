output "vpc_id" {
  value = aws_vpc.Hello_VPC.id
}

output "public_subnet_id" {
  value = aws_subnet.Hello_Public_Subnet.id
}

output "security_group_id" {
  value = aws_security_group.Hello_Security_Group.id
}
