# Test module from terraform registry
module "test_bucket2" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.0"

  bucket = "test-bucket-name2"
  acl = "private"

  versioning = {
    enabled = true
  }
}
# Test module in git monorepo
module "test_module2" {
  source  = "github.com/acaylor/renovate-tf-test-modules.git//modules/test-module?ref=test-module2-v1.0.0"
}