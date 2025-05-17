#! create s3 bucket

resource "aws_s3_bucket" "my-bucket" {
  bucket = var.bucketname
}


resource "aws_s3_bucket_ownership_controls" "s3-public" {
  bucket = aws_s3_bucket.my-bucket
  rule {
    object_ownership = ""
  }

}
