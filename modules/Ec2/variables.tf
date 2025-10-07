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

variable "aws_security_group" {
  description = "awssg"
  type = string
}

variable "pub-subnet" {
    description = "pub sub"
    type = string
  
}
variable "privub-subnet" {
    description = "priv sub"
    type = string
  
}

#TFvars
#inst_type = "t2.micro"
#ami_id = "ami-09e6f87a47903347c"
#key-pair = "server"