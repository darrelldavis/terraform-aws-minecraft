#output "public_ip" {
#  value = aws_eip.mc.public_ip
#}

output "vpc_id" {
  value = module.minecraft.vpc_id
}

output "subnet_id" {
  value = module.minecraft.subnet_id
}

output "public_ip" {
  value = module.minecraft.public_ip
}

output "id" {
  value = module.minecraft.id
}

output "public_key_openssh" {
  value = module.minecraft.public_key_openssh 
}

output "public_key" {
  value = module.minecraft.public_key 
}

output "private_key" {
  value = module.minecraft.private_key 
}

output "zzz_ec2_ssh" {
  value = module.minecraft.zzz_ec2_ssh 
}

resource "local_file" "private_key" {
  content              = module.minecraft.private_key
  filename             = "${path.module}/ec2-private-key.pem"
  directory_permission = "0700"
  file_permission      = "0700"
}

output "minecraft_server" {
  value = "${module.minecraft.public_ip[0]}:${module.minecraft.mc_port}"
}

