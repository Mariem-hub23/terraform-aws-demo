variable "aws_region" {
    type = string
    description = "this field hold aws region info"
    default = "eu-central-1"
}

variable "vpc_cidr" {
    type = string
    description = "this field hold aws cidr block for the vpc"
    default = "10.0.0.0/16"
}

variable "subnet_cidr" {
    type = string
    description = "this field hold aws cidr block for the subnet"
    default = "10.0.1.0/24"
}

variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "bucket_name" {
    type = string
}