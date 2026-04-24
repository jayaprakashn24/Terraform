
# Output the instance id
output "ec2_instance_id" {
  value = aws_instance.ec2-linux.id
}

# Output the public ip
output "ec2_public_ip" {
  value = aws_instance.ec2-linux.public_ip
}

# Output the bucket name
output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.mys3.bucket
}

