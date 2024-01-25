# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1" # Replace with your desired region
  access_key = var.access_key
  secret_key = var.secret_access_key
}

# Create the S3 bucket resource
resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = var.bucket_name

  # Add tags
  tags = {
    Name        = var.bucket_name
    Environment = "Development"
    Created_By  = "Harness IaCM"
  }
}
