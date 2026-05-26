variable "project_name" {}
variable "private_subnet_ids" {
  type = list(string)
}
variable "web_sg_id" {}
variable "instance_type" {}