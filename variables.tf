
// Required
variable "vpc_id" {
  description = "VPC for security group"
}

variable "subnet_id" {
  description = "VPC subnet id to place the instance"
}

variable "key_name" {
  description = "EC2 key name for provisioning and access"
}

variable "bucket_id" {
  description = "Bucket name for persisting minecraft world"
}

// For tags, names
variable "name" {
  description = "Name to use for servers, tags, etc (e.g. minecraft)"
  default     = "mc"
}

variable "tags" {
  description = "Any extra tags to assign to objects"
  default     = {}
}

// Minecraft-specific defaults
variable "mc_port" {
  description = "TCP port for minecraft"
  default     = "25565"
}

variable "mc_root" {
  description = "Where to install minecraft on your instance"
  default     = "/home/minecraft"
}

variable "mc_version" {
  description = "Which version of minecraft to install" 
  default     = "1.12.2"
}

variable "mc_backup_freq" {
  description = "How often (mins) to sync to S3"
  default     = "5"
}

// You'll want to tune these next two based on the instance type
variable "java_ms_mem" {
  description = "Java initial and minimum heap size"
  default     = "2G"
}

variable "java_mx_mem" {
  description = "Java maximum heap size"
  default     = "2G"
}

// Instance vars
variable "associate_public_ip_address" {
  description = "By default, our server has a public IP"
  default     = true
}

variable "ami" {
  description = "AMI to use for the instance - will default to latest Ubuntu"
  default     = ""
}

// https://aws.amazon.com/ec2/instance-types/
variable "instance_type" {
  description = "EC2 instance type/size - the default is not part of free tier!"
  default     = "t2.medium"
}

variable "allowed_cidrs" {
  description = "Allow these CIDR blocks to the server - default is the Universe"
  default     = "0.0.0.0/0"
}

