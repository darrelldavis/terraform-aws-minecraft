// Create a server using all defaults

provider "aws" {
  region  = "us-west-2"
}

module "minecraft" {
  source = "../../"

  name        = "foo"
  namespace   = "bar"
  environment = "baz"

  vpc_id    = "vpc-a92a1dcc"
  subnet_id = "subnet-2a21194f"

  bucket_name = "games-minecraft-sokigzrji25e"

  ami      = "ami-0d6621c01e8c2de2c"
  key_name = "dubldee@gmail.com"

  mc_port        = 30000
  mc_root        = "/home/mc"
  mc_version     = "1.15.2"
  mc_backup_freq = 10

  java_ms_mem = "1G"
  java_mx_mem = "1G"


  tags = { By = "me" }
}
