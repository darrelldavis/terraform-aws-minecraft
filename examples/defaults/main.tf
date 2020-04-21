// Create a server using all defaults
module "minecraft" {
  source = "../../"
}

resource "aws_eip" "mc" {
  instance = module.minecraft.id[0]
  vpc      = true
}
