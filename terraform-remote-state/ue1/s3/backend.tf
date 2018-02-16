terraform {
  backend "s3" {
    bucket = "sliplab-ue1-terraform-remote-state"
    key    = "terraform-remote-state/ue1/s3/terraform.tfstate"
    region = "us-east-1"
  }
}
