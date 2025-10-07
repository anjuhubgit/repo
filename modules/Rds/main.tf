resource "aws_db_instance" "rds" {
    engine = var.engine
    engine_version = var.engine_version
    allocated_storage = var.allocated_storage
    instance_class = var.instance_class
    storage_type = var.storage_type
    identifier = var.identifier
    username = var.username
    password = var.password
    publicly_accessible = true
    skip_final_snapshot = true
  
}

#Tfvars
    #engine = "mysql"
    #engine_version = "8.0.27"
    #allocated_storage = 20
    #instance_class = "db.t3.micro"
    #storage_type = "gp2"
    #identifier = "mydb"
    #username = "admin"
    #password = "admin123"
