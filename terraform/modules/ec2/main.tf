data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "web" {
  count                  = length(var.private_subnet_ids)
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_ids[count.index]
  vpc_security_group_ids = [var.web_sg_id]

  user_data = file("${path.root}/../scripts/install-nginx.sh")

  tags = {
    Name = "${var.project_name}-web-${count.index + 1}"
  }
}