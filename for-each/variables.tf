variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instances" {
  type = map
  default = {
    MongoDB = "t3.medium"
    mysql = "t3.medium"
    web = "t2.micro"
    catalogue = "t2.micro"
    Redis = "t2.micro"
    user = "t2.micro"
    cart = "t2.micro"
    rabbitmq = "t2.micro"
    shipping = "t2.micro"
    payment = "t2.micro"

  }
}

variable "zone_id" {
  default = "Z03861472RI4AHCM7UM2D"
}

variable "domain" {
  default = "kpdigital.online"
}

variable "ingress" {
  type = list
  default = [
    {
        description      = "allowing port 80 from public"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "allowing port 443 from public"
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "allowing port 22 from public"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
  ]

}