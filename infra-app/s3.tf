#resource "random_id" "bucket_suffix" {
 # byte_length = 4
#}

resource "aws_s3_bucket" "remote_s3" {
    bucket = "${var.env}-${var.bucket_name}-akshith-762003"

    tags = {
      Name        = "${var.env}-${var.bucket_name}"
      Environment = var.env
    }
  
}