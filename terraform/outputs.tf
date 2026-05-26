output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}