resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket02"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
