resource "aws_iam_role" "role_codebuild" {
  name               = format("%s-codebuild-role", var.cluster_name)
  assume_role_policy = "${file("./modules/pipe/templates/codebuild.json")}"
}