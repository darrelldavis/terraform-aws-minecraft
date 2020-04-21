output "vpc_id" {
  value = local.vpc_id
}

output "subnet_id" {
  value = local.subnet_id
}

output "public_ip" {
  value = module.ec2_minecraft.public_ip
}

output "id" {
  value = module.ec2_minecraft.id
}

output "public_key_openssh" {
  value = tls_private_key.ec2_ssh.*.public_key_openssh
}

output "public_key" {
  value = tls_private_key.ec2_ssh.*.public_key_pem
}

output "private_key" {
  value = tls_private_key.ec2_ssh.*.private_key_pem
}

resource "local_file" "private_key" {
  count = length(var.key_name) > 0 ? 0 : 1

  content              = tls_private_key.ec2_ssh[0].private_key_pem
  filename             = "${path.module}/ec2-private-key.pem"
  directory_permission = "0700"
  file_permission      = "0700"
}

output "zzz_ec2_ssh" {
  value = length(var.key_name) > 0 ? "" : <<EOT

Ubuntu: ssh -i ${path.module}/ec2-private-key.pem ubuntu@${module.ec2_minecraft.public_ip[0]}
Amazon Linux: ssh -i ${path.module}/ec2-private-key.pem ec2-user@${module.ec2_minecraft.public_ip[0]}

EOT

}

output "ec2_instance_profile" {
  value = "${aws_iam_instance_profile.mc.name}"
}

output "minecraft_server" {
  value = "${module.ec2_minecraft[0].public_ip}:${var.mc_port}"
}
