resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [var.security_group_id]
  key_name      = var.key_name

  user_data = var.user_data

  tags = {
    Name        = "${var.env_name}-Webserver-AZ2"
    Environment = var.env_name
  }
}
