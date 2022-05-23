variable "region" {
  default = "us-east-1"
}

variable access_key {}
variable secret_key {}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

variable "ecs_key_pair_name" {
  default = ""
}

variable "aws_account_id" {
  default = "819319654960"
}

variable "service_name" {
  default = "2ftest"
}

variable "container_port" {
  default = "5000"
}

variable "memory_reserv" {
  default = 100
}

variable "environment" {
  default = "dev"
}
