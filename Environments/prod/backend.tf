  terraform {
  backend "s3" {
    bucket         = "myawsbuckethirem" # REPLACE with your S3 bucket name
    key            = "./Environments/dev"
    region         = "us-east-2"
    encrypt        = true
    use_lockfile = true
    #dynamodb_table = "my-terraform-state-lock" # REPLACE with your DynamoDB table name for state locking
  }
} 

 
