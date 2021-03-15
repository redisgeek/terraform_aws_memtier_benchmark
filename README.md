# Terraform AWS Memtier_benchmark
A simple terraform module to create an EC2 instance that will run [memtier_benchmark](https://github.com/RedisLabs/memtier_benchmark)

# To use
## Provider
Make sure you add an [aws provider as per the terraform docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs).

## Module reference
Add this module to your terraform template, with appropriate initialization of variables (examples shown here):

```
module "memtier" {
  source = "github.com/Redislabs-Solution-Architects/terraform_aws_memtier_benchmark"
  region = "us-east-1"
  linux_ami = "ami-038f1ca1bd58a5790"
  instance_type = "t3.micro"
  ssh_key_name = "toby-kp"
  security_group_id = "sg-09b9fcd952473779f"
  }
```

## Execution
Initialize terraform:
```
terraform init
```

Apply
```
terraform apply
```

# File Structure
- `variables.tf` - contains input variables required
- `main.tf` - contains the template per se
- `outputs.tf` - contains output variables available
- `install_memtier_benchmark.yml` - [cloud-init] file that provisions [memtier_benchmark] on the ec2 instance

# CAVEATS
- AWS/EC2 specific only
- Expects a linux distro

----

[memtier_benchmark]: https://github.com/RedisLabs/memtier_benchmark
[cloud-init]: https://cloudinit.readthedocs.io/en/latest/index.html
