#!/bin/bash
dnf update -y
dnf install nginx -y
systemctl enable nginx
systemctl start nginx

cat > /usr/share/nginx/html/index.html <<EOF
<html>
<head>
  <title>AWS Enterprise Web Infrastructure</title>
</head>
<body>
  <h1>AWS Enterprise Web Infrastructure</h1>
  <p>Deployed using Terraform, EC2, ALB, VPC, S3 and CloudWatch-ready architecture.</p>
</body>
</html>
EOF