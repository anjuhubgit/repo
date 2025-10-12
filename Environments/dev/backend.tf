  terraform {
  backend "s3" {
    bucket         = "myawsbuckethirem" # REPLACE with your S3 bucket name
    key            = "C:/Users/a.mahesh.hiremath/Downloads/iac-cicd-main (1)/iac-cicd-main/Environments/devterraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    use_lockfile = true
    #dynamodb_table = "my-terraform-state-lock" # REPLACE with your DynamoDB table name for state locking
  }
} 

  
