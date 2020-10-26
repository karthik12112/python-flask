resource "aws_s3_bucket" "terraform" {
  bucket = var.s3_bucket

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "terraform" {
  name           = var.dynamodb_table
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

# 
# terraform {
#   backend "s3" {
#     bucket         = "testbcktkk"
#     key            = "stage"
#     dynamodb_table = "test"
#     region         = "us-east-1"
#   }
# }
