# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "default"
  access_key = "ASIASTDX4AOIFO3BEIYU"
  secret_key = "JOapH7YglBGUZRRg5EypHzc/k9tHk17CSDWcLYng"
  token = "FwoGZXIvYXdzEI///////////wEaDKR9KQc1LmgMQOFgKSLVARervHkFy6CiyYEqzzq8yzzLbFycUNFVsFnFq/lMU0H+pCR7VO9cFTPSgV0y84UaFhj6eqq4l8GzZeQQRhyeDghcoXhRBfvY5rEzlLgaKp5/aoWm+KAXtqRn22uyb9qCl/65cAiqq2yGAYPUQ2lMw4+84Kmn5t7r0aR36tZ/N5QUGpJbHnDn8JwD1yC/Jvg6dZZcGFB/sLrkkDs//0Y+gr2lDya9Gt7dl1EA0fPSkfXs3nSuBALY6gf5Rc7EXmUiApkoN7IHopx85wG6jvlWl+bKxPnhnyiH/tagBjItpBX8Zr1tGnB3sVcRrxhrZHTUabGeTBNQUj8HjQKi0cW96DE3KELI0tFaI0sW"
  region  = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "t2_instances" {
  count         = 4
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  subnet_id     = "subnet-08487ceeab59947e3"
  tags = {
    "Project" = "Udacity-p2"
    "Name"    = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
#  resource "aws_instance" "m4_instances" {
#    count         = 2
#    ami           = "ami-0323c3dd2da7fb37d"
#    instance_type = "m4.large"
#    subnet_id     = "subnet-08487ceeab59947e3"
#    tags = {
#      "Project" = "Udacity-p2"
#      "Name"    = "Udacity M4"
#    }
#  }