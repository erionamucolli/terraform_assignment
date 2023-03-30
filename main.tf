resource "aws_s3_bucket" "bucket" {
  bucket = "terrform-assignment-eriona-bucket-${var.environment}"
  acl    = "private"

  tags = {
    Environment = var.environment
  }
}
resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}