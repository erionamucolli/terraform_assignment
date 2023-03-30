resource "aws_s3_bucket" "bucket" {
  bucket = "terrform-assignment-eriona-bucket-${var.environment}"
  acl    = "private"

  tags = {
    Environment = var.environment
  }
}