terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
   backend "s3" {
    bucket = "kks-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true
    #dynamodb_table = "kks-remote-state"
   }
}

provider "aws" {
  # Configuration options
}
