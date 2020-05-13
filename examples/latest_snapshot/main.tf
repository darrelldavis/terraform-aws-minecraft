// Create a server from the latest snapshot

provider "aws" {
  region  = "us-east-1"
}

module "minecraft" {
  source = "../../"

  mc_type = "snapshot"

  bucket_force_destroy = true

}
