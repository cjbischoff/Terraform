variable "region_short" {}
variable "identifier" {}
variable "system" {}

resource "aws_s3_bucket" "terraform_remote_state" {
  bucket = "${lower(var.identifier)}-${lower(var.region_short)}-${lower(var.system)}"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
