/*terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket-name"
    key            = "path/to/your/terraform.tfstate file where you store in S3 bucket"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "your-dynamodb-table-name"
  }
}
*/