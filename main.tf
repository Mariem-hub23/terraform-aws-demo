
locals {
  developer_name = "Mariem"
}

resource "aws_vpc" "my-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${local.developer_name}-VPC"
    env  = "prod_env"
  }
}

resource "aws_subnet" "my-subnet" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "${local.developer_name}-Public-Subnet"
  }
}

resource "aws_instance" "my-instance" {
  ami           = var.ami_id #"ami-0a6793a25df710b06"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.my-subnet.id

  tags = {
    Name = "${local.developer_name}-instance"
  }
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = var.bucket_name #"mariem-aws-bucket-1234"

  tags = {
    Name = "${local.developer_name}-S3-Bucket"
  }
}
