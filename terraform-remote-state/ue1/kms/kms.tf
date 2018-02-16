resource "aws_kms_alias" "terraform_remote_state" {
  name          = "alias/terraform"
  target_key_id = "${aws_kms_key.terraform.key_id}"
}

resource "aws_kms_key" "terraform_remote_state" {
  description             = "Terraform Remote State KMS"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}
