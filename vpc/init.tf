terraform {
    backend "s3" {
      bucket         = "uplusnaa0-tfstate"
      key            = "terraform/vpc/terraform.tfstate"
      region         = "ap-northeast-2"
      encrypt        = true
      dynamodb_table = "uplusnaa0-tflock"
    }
}
