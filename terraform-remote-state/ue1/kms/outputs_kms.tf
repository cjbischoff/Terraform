output "terraform_remote_state_kms_key_arn" {
  value = "${aws_kms_key.terraform_remote_state_key.arn}"
}
