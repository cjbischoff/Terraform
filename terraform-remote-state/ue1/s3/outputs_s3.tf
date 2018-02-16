output "sterraform_remote_state_s3_bucket_arn" {
  value = "${aws_s3_bucket.terraform_remote_state.arn}"
}
