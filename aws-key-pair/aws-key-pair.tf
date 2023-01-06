# aws provider 설정
provider "aws" {
  region = "ap-northeast-2"
}

# aws_key_pair resource 설정
resource "aws_key_pair" "terraform-key-pair" {
  # 위(terraform-key-pair)는 terraform이 인식하는 name, 
  # 아래(tf-key-pair)는 aws에등록할 key pair의 name
  key_name   = "tf-key-pair"
  
  # public_key = ".pub 파일 내용"
  public_key = file("./keys/tf-key-pair.pub")
  
  tags = {
  	description = "terraform key pair import"
  }
}