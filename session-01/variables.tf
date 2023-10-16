variable "ami_id" {
  type = string # this is the data types
  default = "ami-03265a0778a880afb" # this is the defaukt value

}

variable "instance_type" {
  #type = string
  default = "t2.micro"
}

variable "sg_name" {
  #type = string
  default = "allow_all_sg"
}

variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type = map
  default = {
    Name = "MongoDB"
    Environment = "DEV"
    Terraform = "true"
    Project = "ROboshop"
    Component = "MongoDB"
  }
}
