output "vpc_id" {
    description = "The ID of the VPC"
    value       = aws_vpc.vpc.id
}

output "igw_id" {
    description = "The id of the igw"
    value       = aws_internet_gateway.igw.id
}

output "pub_one_subnet_id" {
    description = "The id of the public subnet"
    value       = aws_subnet.pub_one.id
}

output "pub_two_subnet_id" {
    description = "The id of the public subnet"
    value       = aws_subnet.pub_two.id
}
