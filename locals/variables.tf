# variable "ami_id" {
#   type = string
#   default = "ami-03265a0778a880afb"
# }

variable "instance_name" {
  type = list
  default = ["web","MongoDB","catalogue","redis","user","cart","mysql","rabbitmq","payment","shipping"]  
}

variable "zone_id" {
  default = "Z03861472RI4AHCM7UM2D"
}

variable "domain" {
  default = "kpdigital.online"
}

variable "isProd" {
  default = false
}