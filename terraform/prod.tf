# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

# variable "bucket_name" {
#   type        = string
#   description = "Name of bucket used in tag"
# }

resource "aws_s3_bucket" "prod_tf_course" {
  bucket = "tf-course-mfd-2020-09-08"
  acl    = "private"
}

resource "aws_default_vpc" "default" {}

resource "aws_security_group" "prod_web" {
  name        = "tf_course_prod_web_2020_09_10"
  description = "allow standard http and https ports inbound and everything outbound"
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    "Terraform" : "true"
  }
}