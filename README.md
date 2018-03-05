# terraform-aws-minecraft

Terraform module to provision an EC2 instance with an S3 backing store for running the [Minecraft](https://minecraft.net/en-us/) server.

## Usage

```
module "minecraft" {
  source = "git@github.com:darrelldavis/terraform-aws-minecraft.git?ref=master"

  key_name  = "my-key"
  bucket_id = "my-unique-bucket-name"
  vpc_id    = "vpc-xxxxxxxx"
  subnet_id = "subnet-xxxxxxxx"

}
```

## Inputs

|Name|Description|Default|Required|
|:--|:--|:--:|:--:|
|allowed_cidrs|Allow these CIDR blocks to the server - default is the Universe|0.0.0.0/0||
|ami|AMI to use for the instance, tested with Ubuntu and Amazon Linux 2 LTS|latest Ubuntu||
|associate_public_ip_address|Toggle public IP|true||
|bucket_id|Bucket name for persisting minecraft world||Yes|
|instance_type|EC2 instance type/size|t2.medium (note: not free tier!)||
|java_ms_mem|Java initial and minimum heap size|1G||
|java_mx_mem|Java maximum heap size|1G||
|key_name|EC2 key name for provisioning and access||Yes|
|name|Name to use for servers, tags, etc (e.g. minecraft)|mc||
|mc_backup_freq|How often (mins) to sync to S3|5||
|mc_port|TCP port for minecraft|25565||
|mc_root|Where to install minecraft|`/home/minecraft`||
|mc_version|Which version of minecraft to install|1.12.2||
|subnet_id|VPC subnet id to place the instance||Yes|
|tags|Any extra tags to assign to objects|||
|vpc_id|VPC for security group||Yes|

## Outputs

|Name|Description|
|:--|:--|
|public_ip|Instance public IP|

## Authors

[Darrell Davis](https://github.com/darrelldavis)

## License
MIT Licensed. See LICENSE for full details.

