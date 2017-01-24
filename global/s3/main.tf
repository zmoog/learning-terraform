terraform {
    required_version = "~> 0.8.4"
}

provider "aws" {
    region = "${var.region}"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "bodrilli-terraform-up-and-running-state"

    versioning {
        enabled = true
    }

    lifecycle {
        prevent_destroy = true
    }
}