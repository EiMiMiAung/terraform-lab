resource "aws_vpc" "jp-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "MainVPC"
  }
}
output "jp-vpc_id" {
  value = aws_vpc.jp-vpc.id
}