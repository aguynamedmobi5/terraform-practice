resource "aws_instance" "vm" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "demo"
  vpc_security_group_ids = ["sg-02cc5c6ef8b8cfb75"]
  tags = {
    "Name"    = "Demo-Instance"
    "Project" = "Kuch Bhi"
  }
}
