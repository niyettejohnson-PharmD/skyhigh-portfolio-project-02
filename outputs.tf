output "vpc_id" {
  description = "ID of the VPC created by the VPC module"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets created by the VPC module"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets created by the VPC module"
  value       = module.vpc.private_subnet_ids
}

output "web_server_public_ip" {
  description = "Public IP address of the EC2 web server"
  value       = aws_instance.web_server.public_ip
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket for static assets"
  value       = aws_s3_bucket.static_assets.bucket
}