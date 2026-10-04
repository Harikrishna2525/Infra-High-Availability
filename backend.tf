terraform {
  backend "s3" {
    bucket       = "hari-tf-state-25"
    key          = "HA-test/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

