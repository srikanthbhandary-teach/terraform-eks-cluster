terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.42.0"
    }
  }
  # TODO : required_version = "value" -> Need to set the value
  # Current terraform version in the mac
  required_version = "1.7.5"
}
