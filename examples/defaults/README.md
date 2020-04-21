# terraform-aws-minecraft-example

Example code using the [terraform-aws-minecraft](https://github.com/darrelldavis/terraform-aws-minecraft) module to configure a Minecraft server in a simple VPC.

Note: This will create resources that are not "free tier" eligible. 

## Usage

* Init the environment

```
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_DEFAULT_REGION="your-fave-region"
```

* Review `s3/variables.tf` and create an S3 bucket for persisting Minecraft data.


```
cd s3
terraform init
terraform plan -out=/tmp/mc
terraform apply /tmp/mc
```

* Review `variables` in top-level dir and create the VPC, EC2 server

```
terraform init
terraform plan -out=/tmp/mc
terraform apply /tmp/mc
```

Add the server IP to your Minecraft client and refresh until the server becomes available. The provisioner script (from the module) performs the initial S3 world sync can take a few minutes depending on your Minecraft world size.

### TODO

* Log pruner
* Auto-shutdown when in non-use

## Authors

[Darrell Davis](https://github.com/darrelldavis)

## License
MIT Licensed. See LICENSE for full details.

