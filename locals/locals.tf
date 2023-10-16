locals {
  ami_id = "ami-03265a0778a880afb"
  key_public = file("${path.module}/terraform.pub")
  instance_type = var.isProd ? "t3.medium" : "t2.micro"  #var.instance_name[count.index] == "MongoDB" || var.instance_name[count.index] == "mysql" ? "t3.medium" : "t2.micro"
}