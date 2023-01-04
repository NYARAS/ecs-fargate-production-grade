resource "aws_ecs_cluster" "main" {
  name = "${local.prefix}-cluster"

  tags = local.common_tags
}
