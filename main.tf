locals {
  default_tags = {
    Company = var.company
    Environment = var.environment
    Name = var.name
    Service = var.service
    ManagedBy = "Terraform"
  }
}

resource "aws_lightsail_static_ip_attachment" "static_ip_attachment" {
  static_ip_name = aws_lightsail_static_ip.static_ip.name
  instance_name  = aws_lightsail_instance.instance.name
}

resource "aws_lightsail_static_ip" "static_ip" {
  name = "${var.instance-name}-static-ip"
}

resource "aws_lightsail_key_pair" "key_pair" {
  name = var.key-pair-name
}

resource "aws_lightsail_instance" "instance" {
  name = var.instance-name
  availability_zone = var.availability-zone
  blueprint_id = var.blueprint-id
  bundle_id = var.bundle-id
  key_pair_name = var.key-pair-name
  user_data = var.user-data
  tags = merge(local.default_tags, var.tags)
}
