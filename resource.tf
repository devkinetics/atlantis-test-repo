provider "aws" {

}
variable "AMIS" {
  type = map(string)
  default = {
  us-east-1 = "my-ami"
  }
}

resource "aws_instance" "example1" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}
