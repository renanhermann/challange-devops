resource "aws_ecr_repository" "this" {
  name                 = "desafio-devops"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}