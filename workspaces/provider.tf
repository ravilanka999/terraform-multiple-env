terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "84s-remote-state"
    key    = "workspace-demo"
    region = "<YOUR_AWS_REGION>"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
}