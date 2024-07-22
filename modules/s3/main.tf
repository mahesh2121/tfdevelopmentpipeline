resource "aws_s3_bucket" "this" {
  count  = var.creat ? 1 : 0
  bucket = var.name

  force_destroy       = var.force_destroy
  object_lock_enabled = var.object_lock_enabled
  tags                = var.tags
}
