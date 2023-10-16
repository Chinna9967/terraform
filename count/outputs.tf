output "private_ip" {
  value = aws_instance.Count_Of_Instances[*].private_ip
}