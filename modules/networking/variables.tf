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

#TFcars
#aws_region  = "us-east-1"
#vpc-cidr-block = "10.0.0.0/16"
#pub-cidr-block = "10.0.1.0/24"
#priv-cidr-block = "10.0.101.0/24"
#pub-avail-az = "us-east-1a"
#priv-avail-az = "us-east-1b"
