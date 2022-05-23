resource "aws_ecr_repository" "this" {
  name  = "${var.service_name}"
}

resource "aws_ecr_repository_policy" "this" {
  repository = "${var.service_name}"
  policy     = <<EOF
  {
      "Version": "2008-10-17",
      "Statement": [
          {
              "Sid": "new policy",
              "Effect": "Allow",
              "Principal": "*",
              "Action": [
                  "ecr:*"
              ]
          }
      ]
  }
  EOF
  }
