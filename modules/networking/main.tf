
resource "aws_vpc" "anju-dev-vpc"{
    cidr_block = var.vpc-cidr-block

    tags = {
      Name = "Anju-dev"
    }
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.anju-dev-vpc.id
    cidr_block = var.pub-cidr-block
    availability_zone = var.pub-avail-az

    tags = {
        Name = "pubsubnet"
    }
  
}

resource "aws_subnet" "priv" {
    vpc_id = aws_vpc.anju-dev-vpc.id
    cidr_block = var.priv-cidr-block
    availability_zone = var.priv-avail-az

    tags = {
        Name = "privsubnet"
    }
  
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.anju-dev-vpc.id

    tags = {
        Name = "igw"
    }
  
}

resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.anju-dev-vpc.id

    route  {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
  
}

resource "aws_route_table_association" "table" {
    subnet_id = aws_subnet.public.id
    route_table_id = aws_route_table.rt.id
  
}

resource "aws_security_group" "anju-sg" {
    vpc_id = aws_vpc.anju-dev-vpc.id
  


ingress {
    description = "Allow HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    description = "Allow HTTPS from anywhere"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound SSH (from specific IP or trusted network for management)
  ingress {
    description = "Allow SSH from anywhere (restrict in production!)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # TODO: Restrict this to known IPs in production
  }

  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}


