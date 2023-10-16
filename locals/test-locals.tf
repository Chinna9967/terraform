resource "aws_instance" "Count_Of_Instances" {
  count = 10
  ami = local.ami_id
  instance_type =  "t2.micro" #var.instance_name[count.index] == "MongoDB" || var.instance_name[count.index] == "mysql" ? "t3.medium" : "t2.micro"
  tags = {
    Name = var.instance_name[count.index]
  }  

}

# MongoDB cart catalogue user redis mysql rabbitmq shipping payment web
# generally we nedd to copy above about 10 time if we need 10 instances

resource "aws_route53_record" "record" {
  count = 10
  zone_id = var.zone_id
  name = "${var.instance_name[count.index]}.${var.domain}"
  type = "A"
  ttl = 1
  records = [aws_instance.Count_Of_Instances[count.index].private_ip]
}

resource "aws_key_pair" "deployer" {
  key_name   = "terraform-pub"
  public_key = local.key_public
}

resource "aws_instance" "instance-creation" {
  ami = local.ami_id
  instance_type = local.instance_type
  key_name = aws_key_pair.deployer.key_name
}

