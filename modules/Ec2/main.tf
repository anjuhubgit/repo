resource "aws_instance" "dev-anju-01" {
  instance_type = var.instance_type
  ami = var.ami_id
  #vpc_security_group_ids = [ aws_security_group.anju-sg.id ]
  #aws_security_group = var.aws_security_group
  key_name = var.key-pair
  #pub-subnet = var.pub-subnet
  

   associate_public_ip_address = true
user_data = <<-EOF
              #!/bin/bash
                sudo apt update
                sudo apt install docker.io -y
                EOF
}

resource "aws_instance" "dev-anju-02" {
  instance_type = var.instance_type
  ami = var.ami_id
  #vpc_security_group_ids = [ aws_security_group.anju-sg.id ]
  key_name = var.key-pair
  #subnet_id = aws_subnet.priv.id
  #aws_security_group = var.aws_security_group
  #privub-subnet = var.privub-subnet
  associate_public_ip_address = true
user_data = <<-EOF
              #!/bin/bash
                sudo apt update
                sudo apt install docker.io -y
                EOF
  
}
