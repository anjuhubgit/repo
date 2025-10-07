variable "aws_region" {
  description = "region"
  type = string
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

variable "instance_type" {
    description = "instance"
    type = string
  
}
variable "ami_id" {
    description = "ami id"
    type = string
  
}

variable "key-pair" { #server
    description = "key"
    type = string
  
}

variable "engine" {
  description = "engine"
  type = string
}

variable "engine_version" {
    description = "version"
    type = string
  
}

variable "allocated_storage" {
    description = "storage"
    type = string
  
}

variable "instance_class" {
    description = "class"
    type = string
  
}

variable "storage_type" {
    description = "storage type"
    type = string
  
}

variable "identifier" {
    description = "identifier"
    type = string
  
}

variable "username" {
  
  description = "usname"
  type = string
}

variable "password" {
    description = "password"
    type = string
  
}

/* variable "subnet_id" {
    description = "id"
    type = string
  
}

variable "vpc_security_group_id" {
    description = "id"
    type = string
  
} */