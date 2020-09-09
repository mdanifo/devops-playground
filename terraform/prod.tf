# Configure the AWS Provider
provider "aws" {
  version = "~> 3.0"
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