output "public_ip" {
  value = "${module.ec2_minecraft.public_ip}"
}

output "instance_id" {
  value = "${module.ec2_minecraft.ec2_instance_id}"
}
