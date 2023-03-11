terraform {
  backend "s3" {
      bucket         = "tf-naa0-backend" 
      key            = "tf/s3/1-ec2-terraform.tfstate"
      region         = "ap-northeast-2"
      encrypt        = true
      dynamodb_table = "tf-naa0-lock" 
  }
}
