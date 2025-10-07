module "networking" {
    source = "C:/Users/a.mahesh.hiremath/Downloads/iac-cicd-main (1)/iac-cicd-main/modules/networking"
    vpc-cidr-block = var.vpc-cidr-block
    pub-cidr-block = var.pub-cidr-block
    priv-cidr-block = var.priv-cidr-block 
    #cidr_block = var.cidr_block
   /*  public-cidr = var.pub-cidr-block
    privat-cidr = var.priv-cidr-block */
    pub-avail-az = var.pub-avail-az
    priv-avail-az = var.priv-avail-az 

}

module "Ec2" {
    source = "C:/Users/a.mahesh.hiremath/Downloads/iac-cicd-main (1)/iac-cicd-main/modules/Ec2"
   instance_type = var.instance_type
    ami_id =  var.ami_id
    key-pair = var.key-pair
    aws_security_group = module.networking.aws_security_group
    pub-subnet = module.networking.pub-subnet
    privub-subnet = module.networking.privub-subnet
    #subnet_id = module.networking.pub-subnet
    #vpc_security_group_id = module.networking.aws_security_group
}

module "Rds" {
    source = "C:/Users/a.mahesh.hiremath/Downloads/iac-cicd-main (1)/iac-cicd-main/modules/Rds"
    engine = var.engine
    engine_version = var.engine_version
    allocated_storage = var.allocated_storage
    instance_class = var.instance_class
    storage_type = var.storage_type
    identifier = var.identifier
    username = var.username
    password = var.password 
  
}

module "S3"{
    source = "C:/Users/a.mahesh.hiremath/Downloads/iac-cicd-main (1)/iac-cicd-main/modules/S3"
    
}
