resource "aws_vpc" "main" {
	cidr_block = "10.0.0.0/16" #(필수) IP의 범위
    
    tags = { #리소스에 대한 정보
    	Name = "my_vpc"
    }
}
