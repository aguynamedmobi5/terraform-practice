provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "intro" {
  ami                    = "ami-05fa00d4c63e32376"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "demo"
  vpc_security_group_ids = ["sg-02cc5c6ef8b8cfb75"]
  tags = {
    "Name"    = "Demo-Instance"
    "Project" = "Kuch Bhi"
  }
}
