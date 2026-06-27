variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name used for tagging and naming AWS resources"
  type        = string
}

variable "my_ip" {
  description = "Your public IP address in CIDR format for SSH access"
  type        = string
}

variable "key_name" {
  description = "Name of the EC2 key pair to use for SSH"
  type        = string
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name for static assets"
  type        = string
}