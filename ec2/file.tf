provider "aws" {
    region = "ap-northeast-1"
    access_key = "AKIA2EEQ6TYPEWQRXCU3"
    secret_key = "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"
}
resource "aws_instance" "new_instance" {
    ami = "ami-0ed99df77a82560e6 "
    instance_type = "t2.micro"
}
output "public_ip" {
    value = aws_instance.new_instance.public_ip
}