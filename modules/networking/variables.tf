variable "aws_region" {
    description = "aws"
    type = string
    default = "us-east-1"
  
}
variable "vpc-cidr-block" {
    description = "block"
    type = string
  
}

variable "pub-cidr-block" {
    description = "public vidr block"
    type = string
  
}

variable "pub-avail-az" {
    description = "availzone"
    type = string
  
}

variable "priv-cidr-block" {
 description = "public vidr block"
    type = string
  
}

variable "priv-avail-az" {
    description = "availzone"
    type = string
  
}