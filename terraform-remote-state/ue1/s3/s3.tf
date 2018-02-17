variable "region_short" {}
variable "identifier" {}
variable "system" {}

resource "aws_s3_bucket" "terraform_remote_state" {
  bucket = "${lower(var.identifier)}-${lower(var.region_short)}-${lower(var.system)}"
  acl    = "private"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    tag_name    = "Terraform Remote State Bucket"
    tag_app     =  "Terraform"
    tag_env     = "prd"
    tag_contact = "christopherjbischoff@gmail.com"
  }
}



