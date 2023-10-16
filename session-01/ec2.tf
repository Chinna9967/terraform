# resource "aws_instance" "my-wish" {
#     ami = "ami-03265a0778a880afb"   #devops-prac ami
#     instance_type = "t2.micro"
# }

resource "aws_instance" "my-wish" {
    ami = var.ami_id   #devops-prac ami
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all_sg.name]

    # tags = {
    #     Name = "MongoDB"
    #     Environment = "DEV"
    #     Terraform = "true"
    #     Project = "RoboShop"
    #     Component = "MongoDB"
    # }

    tags = var.tags

    

}

