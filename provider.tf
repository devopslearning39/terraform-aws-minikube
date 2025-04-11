terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.76.1"
    }
  }

  backend "s3" {
    bucket = "jp-k8-practice"
    key    = "minikube"
    region = "us-east-1"
    dynamodb_table = "jp-k8-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}