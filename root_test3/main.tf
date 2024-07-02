# Test module from terraform registry
module "test_bucket3" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.0"

  bucket = "test-bucket-name3"
  acl = "private"

  versioning = {
    enabled = true
  }
}
# Test module in git monorepo
module "test_module3" {
  source  = "github.com/acaylor/renovate-tf-test-modules.git//modules/test-module?ref=test-module3-v1.0.0"
}