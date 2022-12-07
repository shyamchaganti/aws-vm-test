output "id" {
  description = "List of IDs of instances"
  value       = module.ec2_instance.*.id
}

output "private_ip" {
  description = "IP Address of ec2_instance Instance"
  value       = module.ec2_instance.*.private_ip
}

output "private_dns" {
  description = "DNS internal name of ec2_instance Instance"
  value       = module.ec2_instance.*.private_dns
}

output "public_dns" {
  description = "DNS internal name of ec2_instance Instance"
  value       = module.ec2_instance.*.public_dns
}

output "public_ip" {
  description = "Public IP Address of ec2_instance Instance"
  value       = module.ec2_instance.*.public_ip
}

output "availability_zone" {
  description = "Public IP Address of ec2_instance Instance"
  value       = module.ec2_instance.*.availability_zone
}

output "Primary_Elasitc_IP" {
  description = "Public IP Address of ec2_instance Instance"
  value       = module.ec2_instance.*.aws_eip
}