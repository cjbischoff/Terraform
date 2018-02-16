output "terraform_remote_state_kms_arn" {
  value = "${aws_kms_key.terraform_remote_state.arn}"
}
