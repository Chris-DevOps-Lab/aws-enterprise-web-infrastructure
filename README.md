# aws-enterprise-web-infrastructure
Enterprise-grade AWS web infrastructure deployed using Terraform with VPC, EC2, ALB, IAM, CloudWatch, and secure networking architecture.

## Project Structure

```bash
aws-enterprise-web-infrastructure/
│
├── README.md
├── architecture-diagram.png
├── .gitignore
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── terraform.tfvars
│   │
│   ├── modules/
│   │   ├── vpc/
│   │   ├── ec2/
│   │   ├── security-group/
│   │   ├── alb/
│   │   └── s3/
│
├── scripts/
│   ├── install-nginx.sh
│   └── monitoring.sh
│
├── screenshots/
│   ├── ec2.png
│   ├── cloudwatch.png
│   ├── vpc.png
│   └── website.png
│
└── docs/
    └── deployment-guide.md
```
## Project Description
This project demonstrates the deployment of a secure and scalable AWS web infrastructure using Terraform Infrastructure-as-Code principles.

The environment includes:
- VPC with public/private subnets
- EC2 web servers
- Application Load Balancer
- IAM roles and security groups
- CloudWatch monitoring
- S3 storage
- Auto Scaling configuration

## Architecture Diagram
![Architecture](architecture-diagram.png)

## Architecture Include
Internet
   ↓
Application Load Balancer
   ↓
EC2 Instances
   ↓
Private Subnet
   ↓
Database

Plus:
NAT Gateway
IAM
CloudWatch
S3

## Technologies Used
- AWS
- Terraform
- Linux
- Nginx
- CloudWatch
- IAM
- VPC
- EC2
- S3
- Auto Scaling

## Features Section

- Infrastructure-as-Code using Terraform
- Modular Terraform architecture
- Secure network segmentation
- Cloud monitoring and alerting
- IAM least privilege access
- Automated deployment scripts

## Deployment Steps

1. Configure AWS CLI
2. Initialize Terraform

terraform init

3. Validate configuration

terraform validate

4. Deploy infrastructure

terraform apply

