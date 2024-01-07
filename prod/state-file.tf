resource "aws_s3_bucket" "bucket" {
  bucket = "state-infra-pragma-kris"
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name             = "terraform_state_lock"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "LockID"
  
  attribute {
    name = "LockID"
    type = "S"
  }
}
