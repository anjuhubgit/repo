output "vpc_id" {
    description = "vpc id"
    value = aws_vpc.anju-dev-vpc.id
  
}

output "pub-subnet" {
    description = "public subnet"
    value = aws_subnet.public.id
  
}

output "privub-subnet" {
    description = "public subnet"
    value = aws_subnet.priv.id
  
}

output "aws_security_group" {
    description = "sg"
    value = aws_security_group.anju-sg.id
  
}
