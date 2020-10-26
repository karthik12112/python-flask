terraform {
  backend "s3" {
    bucket         = "testbcktkk"
    key            = "stage"
    dynamodb_table = "test"
    region         = "us-east-1"
  }
}
