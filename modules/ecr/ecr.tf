resource "aws_ecr_repository" "main" {
  name                 = "${var.env}-ecr"
}
