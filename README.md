# aws-enterprise-web-infrastructure
Enterprise-grade AWS web infrastructure deployed using Terraform with VPC, EC2, ALB, IAM, CloudWatch, and secure networking architecture.

Project Structure
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
