resource "aws_codebuild_project" "react_build" {
  name          = format("%s-codebuild", var.cluster_name)
  build_timeout = "60"

  service_role = aws_iam_role.role_codebuild.arn

    artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    // https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html
    image           = "aws/codebuild/standard:3.0"
    type            = "LINUX_CONTAINER"
    privileged_mode = true
  }

  source {
    type      = "GITHUB"
    location  = "https://github.com/vitorta0506/react-demo.git"
    source_version = "master"
    
    buildspec = "buildspec.yaml"
  }

   
}