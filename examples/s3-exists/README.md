# Example using existing S3 bucket

Note: This will create resources that are not "free tier" eligible. 

## Usage

By default, this will use your "default" AWS credentials profile if installed. Otherwise, set your credentials:

```
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
```

* Edit `region` and `bucket_name` in `main.tf` and then build:

```
terraform init
terraform plan -out=/tmp/mc
terraform apply /tmp/mc
```

Add the server IP to your Minecraft client and refresh until the server becomes available. The provisioner script performing the initial S3 world sync can take a few minutes depending on your Minecraft world size.

## Authors

[Darrell Davis](https://github.com/darrelldavis)

## License
MIT Licensed. See LICENSE for full details.

