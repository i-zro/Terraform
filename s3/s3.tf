resource "aws_s3_bucket" "tfstate" {
  bucket = "uplusnaa0-tfstate"
  
  versioning {
    enabled = true # Prevent from deleting tfstate file
  }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "uplusnaa0-tflock"
  hash_key       = "LockID"
  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}
